pipeline {
    agent any
    environment {
        IMAGE_NAME='saakbar/flask'
    }
    stages {
        stage("Build") {
            steps {
                script {
                    def gitCommit= sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
                    def gitBranch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                    def imageTag = "${IMAGE_NAME}:${gitBranch}-${gitCommit}"
                    sh "docker build -t ${imageTag} ."
                    sh "docker login -u saakbar -p 1Imrannair"
                    sh "docker push ${imageTag}"
                }
            }
        }
    }
}