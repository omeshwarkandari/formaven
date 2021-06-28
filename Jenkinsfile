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
        stage ('deploy') {
            steps {
                sshagent(['tomcat8']) {
                   sh "scp -o StrictHostKeyChecking=no **/*.war ec2-user@172.31.80.190:/opt/apache-tomcat-8.5.68/webapps"
                }
            }
        }
    }
}
