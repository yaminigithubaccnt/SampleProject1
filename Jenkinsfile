pipeline {
  agent any
  stages {
    stage("Docker build") {
      steps {
        sh 'docker buildx build --platform=linux/amd64 -t yamsnd/firstdockerrepo:0:1 .' 
      }
    }
    stage("Docker login") {
      steps {
        sh 'docker login --username yamsnd --password krvamykoya@1' 
      }
    }
    stage("Docker push") {
      steps {
        sh 'docker push yamsnd/firstdockerrepo ' 
      }
    }
  }
  post {
    always {
      mail to:'helloyams@gmail.com'
      subject:'Completed pipeline'
      body:'First pipeline completed successfully'
    }
  }
}