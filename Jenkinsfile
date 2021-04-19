node {
	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}

	stage('Compile-Package'){
	        def mvnHome = tool name: 'maven3.6', type: 'maven'
		sh "${mvnHome}/bin/bin/mvn clean package"
	}
}	
