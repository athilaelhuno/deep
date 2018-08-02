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
      script{
                withEnv(['JENKINS_NODE_COOKIE=dontKillMe']) {
                    sh "runner.sh"
                }
            }
      }
    }
    
  }
}