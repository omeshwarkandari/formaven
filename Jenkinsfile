pipeline {
    agent any
    tools {
       maven "maven 3.6"
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
        stage('Sonar Analysis') {
            environment { scannerHome = tool 'sonar-scanner' }
            steps {
                withSonarQubeEnv('sonar') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }                
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time:1 , unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        stage ('Publish build info') {
            steps {
                rtPublishBuildInfo (
                    serverId: "artifactory"
                )
            }
        }        
    }
}
