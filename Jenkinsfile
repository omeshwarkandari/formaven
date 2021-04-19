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
		        	sh  script: 'mvn clean package'
			}
		}
	}	
}
