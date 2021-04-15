pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
				withMaven(maven: 'mvn') {
            			sh "mvn clean package"
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
