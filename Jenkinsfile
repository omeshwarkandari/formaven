pipeline {
    agent any
    stages {
        stage('Sonarqube') {
            environment {
                scannerHome = tool '/opt/sonar-scanner'
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
