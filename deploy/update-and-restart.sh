#!/usr/bin/env bash

TAG=$1

echo -e "The tag you entered is ${TAG}, press Y/y to continue: \c "
read key

if [ ${key} != "Y" -a ${key} != "y" ]; then
    echo "Goodbye"
    exit 1
fi

ssh work@182.92.235.129 <<ENDSSH
cd reaf-print-dom-server

kill \$(cat reaf-print-dom-server/RUNNING_PID) || true
mv reaf-print-dom-server/logs/application.log logs/`date +%y%m%d%H%M%S`.log
rm -fr reaf-print-dom-server

cp /home/work/reaf-print-dom-server-dists/reaf-print-dom-server-${TAG}.zip .
unzip *.zip
rm *.zip
mv reaf* reaf-print-dom-server
echo ${TAG} > reaf-print-dom-server/VERSION

nohup ./reaf-print-dom-server/bin/reaf-print-dom-server -Dconfig.file=/home/work/reaf-print-dom-server/conf/prod.conf -Dhttp.port=9088 >/dev/null 2>&1 &
ENDSSH

cd ..
zip -r public.zip public
zip -r static.zip static
scp public.zip fe@xiaojiangyou.com:/home/fe/tmp
scp static.zip fe@xiaojiangyou.com:/home/fe/tmp
ssh fe@xiaojiangyou.com <<ENDSSH
cd tmp
unzip static.zip
rm -fr /data/soyyin.com/static
mv static /data/soyyin.com/
unzip public.zip
rm -fr /data/soyyin.com/assets
mv public /data/soyyin.com/
mv /data/soyyin.com/public /data/soyyin.com/assets
ENDSSH
rm public.zip
rm static.zip