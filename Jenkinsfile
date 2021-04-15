pipeline {
	agent any
	stages {
		stage('---clean---') {
			steps {
		          	git 'https://github.com/omeshwarkandari/formaven.git'
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
