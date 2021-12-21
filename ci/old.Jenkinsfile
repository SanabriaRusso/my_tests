pipeline {
    agent {
        kubernetes {
            containerTemplate {
                name 'my-agent'
                image 'python:3.10.1-alpine'
                command 'sleep'
                args '3600'
            }
        }
    }
    stages {
        stage('Get Python version') {
            steps {
                container('my-agent') {
                    sh 'python3 --version'
                }
            }
        }
    }
}