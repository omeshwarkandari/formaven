pipeline {
	agent any
	tools {
		maven 'maven3.6'
	}
	stages {
		stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
		}

		stage('Build'){
	        sh  script: 'mvn clean package'
		}
	}
}
