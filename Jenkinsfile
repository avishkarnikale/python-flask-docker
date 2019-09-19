pipeline {
  agent any 
  stages {
    stage('Lint HTML using tidy'){
            steps {
                        sh 'tidy -q -e *.html'
                  }
    }
    stage('Lint python & Dockerfile'){
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
                        sh 'sudo docker run -d --name TestApp -p 80:80 cdend-uda-avish-capstn '
            }
    }
    stage('Verify app is up'){
            steps {
                        sh 'curl -fsS http://localhost:80 > /dev/null'
            }
    }
    
    stage('Stop/Kill App Docker Container '){
            steps {
              sh 'sudo docker kill TestApp'
              sh 'sudo docker rm TestApp'
            }
    }
  }
}
