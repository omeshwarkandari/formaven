pipeline {
	agent any
	tools {
		maven 'maven3.6'
	}
	stage('Build'){
	        sh  script: 'mvn clean package'
	}
}
