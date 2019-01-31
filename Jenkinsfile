pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

docker build -t cachengo/sadis-server-$AARCH:$IMAGE_TAG .
docker push cachengo/sadis-server-$AARCH:$IMAGE_TAG'''
      }
    }
  }
}