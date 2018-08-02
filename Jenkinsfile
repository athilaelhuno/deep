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
        sh 'ls -la'
        sh 'python process.py &'
        sh 'checker.sh &'
      }
    }
    
  }
  post {
	  always {
	    cleanWs()
	  }
  }
}