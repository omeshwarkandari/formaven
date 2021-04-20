pipeline {
	agent {
	 	sshagent 'tomcat'
	}
	tools {
		maven 'Maven3.6.3'
	}
	stages {
		stage('SCM Checkout') {
			steps {
				git 'https://github.com/omeshwarkandari/formaven.git'
			}
		}			
		stage('Build'){
			steps {
				withMaven(maven : 'maven_3_6_3') 
	                    sh 'mvn clean build'
			}						        
		}
		stage('Deploy'){  
			steps {
				sh "scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.27.119:/opt/apache-tomcat-8.5.65/webapps"
			}   
        	
      	}
	}	
}
