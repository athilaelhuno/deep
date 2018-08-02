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
        parallel(
          a: {
            sh 'python process.py &'
          },
          b: {
            sh 'sh checker.sh process.py &'
          }
        )   
      }
    }
    
  }
}