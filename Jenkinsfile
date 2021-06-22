pipeline {
    agent any
    environment {
        PATH = "/opt/maven/apache-maven-3.6.3/bin:$PATH"
    }
    stages {
        stage("clone code"){
            steps{
                git 'https://github.com/omeshwarkandari/formaven.git'
            }
        }

        stage("build code"){
            steps{
                sh "mvn clean install"
            }
        }

        stage('SonarQube analysis') {
            steps {
                environment {
                 scannerHome = tool 'sonar-scanner' // the name you have given the Sonar Scanner (Global Tool Configuration)
                }
                withSonarQubeEnv(installationName:'sonar') 
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    }
}
