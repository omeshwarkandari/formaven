node {

	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}
	
	stage('Compile-Package'){
		sh 'mvn package'
	}
	
}
