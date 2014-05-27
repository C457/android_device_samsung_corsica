#!/bin/sh

VENDOR=samsung
DEVICE=corsica

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling device files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
# MY WAY
    cp ~/Downloads/tear-apart/dump/$FILE $BASE/$FILE
done

./setup-makefiles.sh
