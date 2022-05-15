pipeline {
    agent none
    stages {
        stage('Build with Maven Container') {
            agent {
             docker {
              image 'maven:3.5.0'
            }
        }
        steps {
             sh 'mvn -Dmaven.test.failure.ignore=true clean package'
            }
        }
        stage('Docker Build') {
             agent any
             steps {
                 sh 'docker build -t cgennari76/spring-rest-mock:latest .'
             }
        }
    }
}
