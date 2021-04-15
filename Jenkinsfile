pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
		          	def mvnHome = tool name: 'maven3.6', type: 'maven'
				sh "${mvnHome}/bin/mvn clean package"
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
