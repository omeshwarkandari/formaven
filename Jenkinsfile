pipeline {
    agent any
   stages {
    stage('SonarCode-Analysis') {
      environment {
        SCANNER_HOME = tool 'sonar-scanner'
        ORGANIZATION = "demo"
        PROJECT_NAME = "demo_jenkins-pipeline-as-code"
        SONAR_TOKEN = credentials('Sonarqube-Server')
      }
      steps {
        withSonarQubeEnv(installationName: 'Sonarqube-Server', credentialsId: 'Sonarqube-Server') {
            sh '''$SCANNER_HOME/bin/sonar-scanner -Dsonar.organization=$ORGANIZATION \
            -Dsonar.java.binaries=build/classes/java/ \
            -Dsonar.projectKey=$PROJECT_NAME \
            -Dsonar.sources=.'''
        }
      }
    }
  }
}
