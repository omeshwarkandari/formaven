node {
	agent any

		stage('---build---') {
			
		        	def mvnHome = tool name: 'maven3.6', type: 'maven'
				sh "${mvnHome}/bin/mvn clean package"
	
		}
}
