node{
   
  stage('SCM Checkout') {
    git 'https://github.com/omeshwarkandari/formaven.git'
  }

  stage('Build'){
          def mvnHome = tool name: 'maven3.6', type: 'maven'
          sh "${mvnHome}/bin/mvn clean package"
  }

   
  stage('Deploy'){     
       sshagent(['Deploy']) {
         sh "scp -o StrictHostKeyChecking=no target/*.war ubuntu@172.31.36.126:~/apache-tomcat-9.0.45/webapps"
      }
  }
}
