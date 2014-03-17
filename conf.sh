#! /bin/bash

CUR_DIR=`dirname $0`

cd $PWD

APP_NAME=`basename "$PWD"`

sed -e "s!APP_NAME!$APP_NAME!g" -e "s!APP_USER!$USER!g" -e "s!APP_DIR!$PWD!g" $CUR_DIR/conf.tpl > $APP_NAME.conf

rm nodejs 2>/dev/null
ln -s /usr/bin/nodejs nodejs

cp $CUR_DIR/app.sh $PWD

