pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
		          	// Get Maven Home Path
					def mvnHome = tool name: 'maven3.6', type: 'maven'
					sh "${mvnHome}//home/ubuntu/apache-maven-3.6.3 package"
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
