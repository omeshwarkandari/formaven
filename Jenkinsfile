pipeline {
  agent any
  environment {
        PATH = "/opt/maven/apache-maven-3.6.3/bin:$PATH"
  }
  stages {
    stage("build code"){
            steps{
                sh "mvn clean install"
            }
    }
    stage('SonarCode-Analysis') {
      environment {
        SCANNER_HOME = tool 'sonar-scanner'
        ORGANIZATION = "demo"
        PROJECT_NAME = "demo_jenkins-pipeline-as-code"
      }
      steps {
        withSonarQubeEnv('Sonarqube-Server') {
            sh '''$SCANNER_HOME/bin/sonar-scanner -Dsonar.organization=$ORGANIZATION \
            -Dsonar.java.binaries=build/classes/java/ \
            -Dsonar.projectKey=$PROJECT_NAME \
            -Dsonar.sources=.'''
        }
      }
    }
  }
}
