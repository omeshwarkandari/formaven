node{
   
  stage('SCM Checkout') {
    git 'https://github.com/omeshwarkandari/formaven.git'
  }

  stage('Build'){
          def mvnHome = tool name: 'maven3.6', type: 'maven'
    sh "${mvnHome}/bin/mvn clean package"
  }

   
  stage('Deploy'){     
    sshagent(['deploy']) {
        sh "scp -o StrictHostKeyChecking=no /target/HelloWorld-1.war.original ubuntu@172.31.62.132:~/apache-tomcat-9.0.44/webapps"                
    }   
  }
}
