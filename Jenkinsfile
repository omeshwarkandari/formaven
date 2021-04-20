node{
   
  stage('SCM Checkout') {
    git 'https://github.com/omeshwarkandari/formaven.git'
  }

  stage('Build'){
         def mvnHome = tool name: 'Maven3.6.3', type: 'maven'
		   sh "${mvnHome}/bin/mvn clean package"
  }
   
  stage('Deploy'){     
      sshagent(['tomcat']) {
        sh "scp -o StrictHostKeyChecking=no target/*.war ubuntu@172.31.27.119:~/apache-tomcat-9.0.45/webapps"
      }
  }
}
