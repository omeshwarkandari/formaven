pipeline {
  agent any
  stages  {

    stage('SCM Checkout') {
      steps {
        git 'https://github.com/omeshwarkandari/formaven.git'
      }      
    }


    stage('Build') {
      steps {
        def mvnHome = tool name: 'maven3.6', type: 'maven'
        sh "${mvnHome}/bin/mvn clean package"
      }      
    }

   
    stage('Deploy') {  
      steps {
        sshagent(['Test-Deploy']) {
          sh "scp -o StrictHostKeyChecking=no target/*.war ubuntu@172.31.52.3:~/apache-tomcat-9.0.45/webapps" 
        }
      }       
    }
  }   
}
