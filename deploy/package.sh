#!/usr/bin/env bash

cd ..

# confirm the tag
TAG=$(grep version build.sbt | awk 'match($0, /[0-9\.]+/) { print substr($0, RSTART, RLENGTH) }')

echo -e "The tag will be ${TAG}, press Y/y to continue: \c "
read key

if [ ${key} != "Y" -a ${key} != "y" ]; then
    echo "Goodbye"
    exit 1
fi

# create and push the tag
git tag ${TAG}
git push origin ${TAG}

# package it
sbt clean dist
mv target/universal/reaf-print-dom-server-${TAG}.zip deploy/reaf-print-dom-server-${TAG}.zip
cd deploy

# upload it
scp reaf-print-dom-server-${TAG}.zip work@182.92.235.129:/home/work/reaf-print-dom-server-dists

