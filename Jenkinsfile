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
                    // Docker build commands
                    echo "Building Docker image..."
                }
            }
        }
        stage('Test') {
            steps {
    
