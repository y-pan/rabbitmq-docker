export ROOTDIR=`pwd`
export VOLUMES=$ROOTDIR/volumes
mkdir -p $VOLUMES

secret=config/secret.sh
secretExample=config/secret.example.sh

if [ ! -f "$secret" ]; then
    echo "Aborted! \nPlease create file: $secret \nAn example is: $secretExample"
    exit 1
fi

chmod a+x $secret
. $secret
. config/config.sh

plugins='[rabbitmq_management].'

echo  ${plugins} > $RABBITMQ_ENABLED_PLUGINS

docker-compose up -d
