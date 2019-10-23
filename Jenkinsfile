pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
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
