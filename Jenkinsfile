node {

	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}
	
	stage('Compile-Package'){
		// Get Maven Home Path
		def mvnHome = tool name: 'maven3.6', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
	
}
