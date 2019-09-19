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
                        sh 'make all'
                  }
    }
    stage('Build Docker Image '){
            steps {
                        sh 'sudo docker build --tag=cdend-uda-avish-capstn .'
            }
    }
    stage('Run Docker Image '){
            steps {
                        sh 'sudo docker run -p 8080:80 cdend-uda-avish-capstn '
            }
    }
  }
}
