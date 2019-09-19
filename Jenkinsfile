pipeline {
  agent any 
  stages {
    stage('Lint HTML using tidy'){
            steps {
                        sh 'tidy -q -e *.html'
                        sh 'pylint --disable=R,C,W1203 app/app.py'
                  }
    }
    stage('Lint python/Dockerfile post virtual env setp '){
            steps {
                        sh 'make all'
                  }
    }
  }
}
