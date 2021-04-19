pipeline {
	agent any
	tools {
		maven 'Maven3.6'
	}
	stage('Build'){
	        sh  script: 'mvn clean package'
	}
}
