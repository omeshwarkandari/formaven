pipeline {
	agent any
	tools {
		maven 'Maven3.6'
	}
	stage('Build'){
		steps {
			sh  'mvn clean package'
		}
	}
}
