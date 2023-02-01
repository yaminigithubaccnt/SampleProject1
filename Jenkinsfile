pipeline {
  agent any
  stages {
    stage("Docker build") {
      steps {
        sh 'docker buildx build --platform=linux/amd64 -t yamsnd/firstdockerrepo .' 
      }
    }
    stage("Docker login") {
      steps {
        sh 'docker login --username  --password ' 
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
        echo "Pipeline completed"
    }
  }
}
