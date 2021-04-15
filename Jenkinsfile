pipeline {
	agent any

		stage('---build---') {
			steps {
		          	def mvnHome = tool name: 'maven3.6', type: 'maven'
				sh "${mvnHome}/bin/mvn clean package"
			}
		}
}
