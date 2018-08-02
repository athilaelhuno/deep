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
        sh 'sh checker.sh process.py &'
      }
    }
    
  }
}