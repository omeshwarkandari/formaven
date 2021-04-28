pipeline {
    agent any
    environment {
        PATH = "/opt/maven/apache-maven-3.6.0/bin:$PATH"
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
        stage('Deploy'){  
            steps {
                sshagent(['tomcat']) {
                    sh "scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.86.242:/opt/apache-tomcat-8.5.65/webapps"
                }
            }           
        }    
   }          
}
