pipeline {
	agent any
	stages {
		stage('SCM Checkout') {
			steps {
				git 'https://github.com/omeshwarkandari/formaven.git'
			}
		}
		stage('Build'){
			steps {
				def mvnHome = tool name: 'maven3.6', type: 'maven'
		        	sh "${mvnHome}/bin/mvn clean package"
			}
		}
	}	
}
