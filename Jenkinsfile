pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    git credentialsId: 'github-credentials-id-frontend', url: 'https://github.com/Jt527/Integraci-n-continua-GR-12-B01.git'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    docker.build('tienda-perros-frontend', '.')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    bat 'docker run -d --name tienda-perros-frontend -p 8082:80 tienda-perros-frontend'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        success {
            echo 'El pipeline se ejecutó correctamente.'
        }
        failure {
            echo 'El pipeline falló.'
        }
    }
}
