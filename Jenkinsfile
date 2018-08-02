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
        sh 'ls -la '
        sh 'sleep 10'
      }
    }
    
  }
  post {
	  always {
	    cleanWs()
	  }
  }
}