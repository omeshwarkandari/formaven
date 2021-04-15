pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
		          	// Get Maven Home Path
					def mvnHome = tool name: 'maven3.6', type: 'maven'
					sh "${mvnHome}/bin/mvn package"
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
