pipeline {
    agent any
    tools {
        maven "Maven 3.6"
    }
    stages {
        stage ('clone repo') {
            steps {
                git "https://github.com/omeshwarkandari/formaven.git"
            }
        }
        stage ('build') {
            steps {
                sh " mvn clean install"
            }
        }
        stage ('deploy') {
            steps {
                sshagent(['tomcat8']) {
                   sh "scp -o StrictHostKeyChecking=no /src/main/webapp/*.war ec2-user@172.31.80.190:/opt/apache-tomcat-8.5.68/webapps"
                }
            }
        }
    }
}
