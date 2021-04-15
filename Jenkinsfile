pipeline {
	tools {
    		maven 'M3'
 	}
	agent any
	stages {
		stage('---clean---') {
			steps {
				sh "mvn clean"
			}

		}
		stage('---test---') {
			steps {
				sh "mvn test"
			}
		}
		stage('---package---') {
			steps {
				sh "mvn package"
			}
		}
	}
}
