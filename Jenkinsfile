pipeline {
	agent any
	tools {
		maven 'Maven3.6'
	}
	stage('Build'){
		sh  'mvn clean package'
	}
}
