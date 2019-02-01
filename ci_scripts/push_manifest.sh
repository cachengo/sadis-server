export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`
export IMAGE_NAME=sadis-server

cat ~/.docker/config.json
docker version
cat /etc/docker/daemon.json
docker info

docker manifest create --amend cachengo/$IMAGE_NAME:$IMAGE_TAG cachengo/$IMAGE_NAME-x86_64:$IMAGE_TAG cachengo/$IMAGE_NAME-aarch64:$IMAGE_TAG
docker manifest push cachengo/$IMAGE_NAME:$IMAGE_TAG
