pipeline {
	agent any
	tools {
		maven 'Maven3.6'
	}
	stages {

		stage('SCM Checkout') {
			git 'https://github.com/omeshwarkandari/formaven.git'
		}
		stage('Build'){
				withMaven(maven : 'maven_3_6_3') {
                    sh 'mvn clean build'
		        
		}
	}	
}
