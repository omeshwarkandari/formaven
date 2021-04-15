pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
				def mvnHome = tool name: 'Apache Maven 3.6.0', type: 'maven'
    				sh "${mvnHome}/bin/mvn -B -DskipTests clean package"
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
