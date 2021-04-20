pipeline {
    agent any
    environment {
        PATH = "/opt/maven/apache-maven-3.6.3/bin:$PATH"
    }
    stages {
        stage("clone code"){
            steps{
                git 'https://github.com/omeshwarkandari/formaven.git'
            }
        }
        stage("build code"){
            steps{
                sh "mvn clean install"
            }
        }
        stage ('Testing Stage') {
            steps {
                withMaven(maven : 'maven') {
                    sh 'mvn test'
                }
            }
        }
        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'maven') {
                    sh 'mvn deploy'
                }
            }
        }
    } 
}       
