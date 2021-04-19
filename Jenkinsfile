pipeline {
	agent any
	tools {
		def mvnHome = tool name: 'maven3.6', type: 'maven'
	}
	stages {
		stage('SCM Checkout') {
			steps {
				git 'https://github.com/omeshwarkandari/formaven.git'
			}
		}
		stage('Build'){
			steps {
				
		        	sh "${mvnHome}/bin/mvn clean package"
			}
		}
	}	
}
