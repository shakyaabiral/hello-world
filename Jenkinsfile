pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '. jenkins/build.sh'
            }
        }
        stage('Sanity check') {
            steps {
                input "Do you want to deploy to Production?"
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Successful!!!"'
            }
        }
    }
}
