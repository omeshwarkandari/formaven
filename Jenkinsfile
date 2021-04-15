node {
	stage('SCM Checkout') {
		git 'https://github.com/omeshwarkandari/formaven.git'
	}

	stage('Compile-Package'){
	        def mvnHome = tool name: 'maven3.6', type: 'maven'
		sh "${mvnHome}/bin/mvn clean package"
	}

	stage('Deploy to Tomcat'){
      
      sshagent(['tomcat-dev']) {
         sh 'scp -o StrictHostKeyChecking=no target/*.war ubuntu@172.31.62.132:/opt/tomcat8/webapps/'
      }
   }
}	
