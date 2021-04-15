node{
   def tomcatIp = '172.31.62.132'
   def tomcatUser = 'ubuntu'
   def stopTomcat = "ssh ${tomcatUser}@${tomcatIp} /apache-tomcat-9.0.44/bin/shutdown.sh"
   def startTomcat = "ssh ${tomcatUser}@${tomcatIp} /apache-tomcat-9.0.44/bin/startup.sh"
   def copyWar = "scp -o StrictHostKeyChecking=no target/HelloWorld-1.war ${tomcatUser}@${tomcatIp}:/apache-tomcat-9.0.44/webapps/"
   
  stage('SCM Checkout') {
    git 'https://github.com/omeshwarkandari/formaven.git'
  }

  stage('Compile-Package'){
          def mvnHome = tool name: 'maven3.6', type: 'maven'
    sh "${mvnHome}/bin/mvn clean package"
  }

   
  stage('Deploy Dev'){
	  sh 'mv target/HelloWorld-1*.war target/HelloWorld-1' 
	   
	  sshagent(['deploy']) {
		   sh "${stopTomcat}"
			 sh "${copyWar}"
			 sh "${startTomcat}"
          }   
   }
}
