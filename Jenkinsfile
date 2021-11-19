pipeline{
  environment{
    IMAGE_NAME = ""
    IMAGE_TAG = "${BUILD_TAG}"
    CONTAINER_NAME = ""
    STAGING = "ynov-lucas-staging"
    PRODUCTION = "ynov-lucas-production"
    PRODUCTION_HOST = "52.206.176.76"
  }
  agent none

  stages{

    stage ('Build Stage'){
      agent any
      steps{
        script{
          sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
        }
      }
    }
  }
  post{
    success{
        slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
    failure {
        slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
  }
}