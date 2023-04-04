pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                sh "docker build -t saakbar/api1:v1 ."
                sh "docker login -u saakbar -p 1Imrannazir"
                sh "docker push saakbar/api1:v1"
            }
        }
    }
}