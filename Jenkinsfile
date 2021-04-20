node {
	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}

	stage('Compile-Package'){
	        def mvnHome = tool name: 'maven3.6.3', type: 'maven'
		sh "${mvnHome}/bin/mvn clean package"
	}
}	
