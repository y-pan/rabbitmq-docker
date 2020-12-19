export ROOTDIR=`pwd`
export VOLUMES=$ROOTDIR/volumes

. config/secret.sh
. config/config.sh

docker-compose down
