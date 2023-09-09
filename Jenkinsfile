pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    git 'https://github.com/batsy101/jd_cicd.git'
                }
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image using Dockerfile in the repository root
                    def customImage = docker.build('nginx-webapp', '.')
                    
                    // Tag the image if needed
                    customImage.tag('nginx-webapp:latest')
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container using the custom image
                    docker.image('nginx-webapp:latest').run('-d -p 80:80')
                }
            }
        }
    }
}
