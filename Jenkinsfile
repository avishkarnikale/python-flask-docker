pipeline {
  agent any 
  stages {
    stage('Lint HTML using tidy'){
            steps {
                        sh 'tidy -q -e *.html'
                  }
    }
    stage('Lint python/Dockerfile post virtual env setp '){
            steps {
                        sh 'sudo su'
                        sh 'make all'
                  }
    }
  }
}
