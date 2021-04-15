node{
   def tomcatIp = '172.31.62.132'
   def tomcatUser = 'ubuntu'
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
	  sh 'mv target/myweb*.war target/myweb.war' 
	   
      sshagent(['tomcat-dev']) {
			 sh "${stopTomcat}"
			 sh "${copyWar}"
			 sh "${startTomcat}"
	    }
   }
}
