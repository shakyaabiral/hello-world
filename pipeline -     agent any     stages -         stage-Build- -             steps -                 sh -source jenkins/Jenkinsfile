pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'source jenkins/build.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Successful!!!"'
            }
        }
    }
}
