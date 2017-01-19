#!/usr/bin/env bash

cd ..

# confirm the tag
VERSION=$(grep version build.sbt | awk 'match($0, /[0-9\.]+/) { print substr($0, RSTART, RLENGTH) }')
TAG=$VERSION.$(git rev-parse --short=7 HEAD)

echo -e "The tag will be ${TAG}, press Y/y to continue: \c "
read key

if [ ${key} != "Y" -a ${key} != "y" ]; then
    echo "Goodbye"
    exit 1
fi

# package it
sbt clean dist

# upload it
scp target/universal/reaf-print-dom-server-${VERSION}.zip work@localtest.tinysoy.com:/home/work/reaf-print-dom/reaf-print-dom-server-${TAG}.zip

ssh work@localtest.tinysoy.com <<ENDSSH
cd reaf-print-dom

kill \$(cat 9088/RUNNING_PID) || true
mv 9088/logs/application.log logs/`date +%y%m%d%H%M%S`.log
rm -fr 9088

unzip reaf-print-dom-server-${TAG}.zip
rm *.zip
mv reaf* 9088
echo ${TAG} > 9088/VERSION

nohup ./9088/bin/reaf-print-dom-server -Dconfig.file=/home/work/reaf-print-dom/conf/prod.conf -Dhttp.port=9088 >/dev/null 2>&1 &
ENDSSH

cd deploy

