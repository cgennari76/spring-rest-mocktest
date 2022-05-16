pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Docker build') {
            steps {
                sh 'docker build -t cgennari76/springmocktest:latest .'
            }
        }
    }
}
