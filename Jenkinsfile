pipeline {
	agent any
	tools {
		maven 'Maven3.6'
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
				sshagent(['tomcat']){
					sh "scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.27.119:/opt/apache-tomcat-8.5.65/webapps"
				}
			}        	
      	}
	}	
}
