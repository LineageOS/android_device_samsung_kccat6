#!/bin/bash

VENDOR=samsung
DEVICE=kccat6xx

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
#rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d ./VEN/$DIR ]; then
        mkdir -p ./VEN/$DIR
    fi
    #adb pull /system/$FILE $BASE/$FILE
    cp -rf ~/cm13/vendor/samsung/kccat6xx/proprietary/$FILE ./VEN/$FILE
done

./setup-makefiles.sh
