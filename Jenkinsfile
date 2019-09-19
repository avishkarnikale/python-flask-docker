pipeline {
  agent any 
  stages {
    stage('Lint HTML + Python using tidy and Pylint'){
            steps {
                        sh 'tidy -q -e *.html'
                        sh 'pylint --disable=R,C,W1203 app/app.py'
                  }
    }
  }
}
