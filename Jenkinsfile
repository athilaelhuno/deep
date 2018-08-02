pipeline {
  agent {
    label 'deep'
  }
  options {
    timestamps()
  }
  stages {
    stage('Test') {
      steps {
      checkout scm
      script{
                withEnv(['JENKINS_NODE_COOKIE=dontKillMe']) {
                    sh "sh runner.sh"
                }
            }
      }
    }
    
  }
}