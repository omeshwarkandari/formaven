pipeline {
	agent any
	stages {
		stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
		}

		stage('Build'){
	        def mvnHome = tool name: 'maven3.6', type: 'maven'
			sh "${mvnHome}/bin/mvn clean package"
		}
	}
}
