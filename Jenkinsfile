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
            sh 'hostname'
            sh 'nohup python process.py &'
          },
          b: {
            sh 'nohup sh checker.sh process.py &'
          }
        )   
      }
    }
    
  }
}