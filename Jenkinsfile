pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shivamsonari376/Docker_Assignment.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image..."
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo "Running tests or other commands..."
                }
            }
        }
        stage('Post Actions') {
            steps {
                script {
                    echo "Performing post actions..."
                }
            }
        }
    }
}
