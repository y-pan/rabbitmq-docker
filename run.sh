export ROOTDIR=`pwd`
export VOLUMES=$ROOTDIR/volumes
mkdir -p $VOLUMES

. config/secret.sh
. config/config.sh

plugins='[rabbitmq_management].'

echo  ${plugins} > $RABBITMQ_ENABLED_PLUGINS

docker-compose up