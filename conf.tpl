# APP_NAME

description APP_NAME

start on filesystem or runlevel [2345]
stop on runlevel [!2345]

respawn

exec start-stop-daemon -S -c APP_USER -d APP_DIR --exec APP_DIR/app.sh