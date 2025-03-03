pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-credentials')  // Use your AWS credentials
        AWS_SECRET_ACCESS_KEY = credentials('aws-credentials')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shivamsonari376/Docker_Assignment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-docker-image .'
                }
            }
        }
    }
    post {
        success {
            echo 'Build Docker Image Successful!'
        }
        failure {
            echo 'Build Docker Image Failed!'
        }
    }
}
