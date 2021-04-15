node{
   def tomcatIp = '54.237.23.131'
   def tomcatUser = 'tomcat'
   def stopTomcat = "ssh ${tomcatUser}@${tomcatIp} /opt/tomcat8/bin/shutdown.sh"
   def startTomcat = "ssh ${tomcatUser}@${tomcatIp} /opt/tomcat8/bin/startup.sh"
   def copyWar = "scp -o StrictHostKeyChecking=no target/myweb.war ${tomcatUser}@${tomcatIp}:/opt/tomcat8/webapps/"
   
  stage('SCM Checkout') {
    git 'https://github.com/omeshwarkandari/formaven.git'
  }

  stage('Compile-Package'){
          def mvnHome = tool name: 'maven3.6', type: 'maven'
    sh "${mvnHome}/bin/mvn clean package"
  }

   
  stage('Deploy Dev'){
	  sh 'mv target/HelloWorld-1*.war target/HelloWorld-1' 
	   
      sshagent(['tomcat-dev']) {
			 sh "${stopTomcat}"
			 sh "${copyWar}"
			 sh "${startTomcat}"
	    }
   }
}
