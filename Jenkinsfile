pipeline {
    agent any
    stages {
        stage('Sonarqube') {
            environment {
                scannerHome = tool 'Sonarqube-Server'
           }
           steps {
                withSonarQubeEnv('sonarqube') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
                timeout(time: 10, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
               }
          }
       }
   }
}
