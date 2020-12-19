export ROOTDIR=`pwd`
export VOLUMES=$ROOTDIR/volumes
mkdir -p $VOLUMES

chmod a+x config/secret.sh
. config/secret.sh
. config/config.sh

plugins='[rabbitmq_management].'

echo  ${plugins} > $RABBITMQ_ENABLED_PLUGINS

docker-compose up