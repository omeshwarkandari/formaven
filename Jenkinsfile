node ('node-2') {
	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}
	stage('Compile-Package'){
	        def mvnHome = tool name: 'Maven3.6', type: 'maven'
		sh "${mvnHome}/bin/mvn clean package"
	}
}	
