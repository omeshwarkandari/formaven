pipeline {
	agent any
	tools {
		maven 'Maven3.6'
	}
	stage('Build'){
		build 'test'
	        sh  script: 'mvn clean package'
	}
}
