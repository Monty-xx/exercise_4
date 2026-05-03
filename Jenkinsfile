=pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'monty1010/django-app'
        CONTAINER_NAME = 'django-app'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh "docker stop ${CONTAINER_NAME} || true"
                sh "docker rm ${CONTAINER_NAME} || true"
                sh "docker run -d --name ${CONTAINER_NAME} -p 80:8000 ${DOCKER_IMAGE}:latest"
            }
        }
    }
}
