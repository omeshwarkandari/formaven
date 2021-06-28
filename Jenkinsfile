pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven 3.6"
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
        stage('Sonar Analysis') {
            environment { scannerHome = tool 'sonar-scanner' }
            steps {
                withSonarQubeEnv('sonar') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }                
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time:1 , unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        stage('deploy to artifactory'){
            steps {
                rtMavenDeployer (
                    id: "MAVEN_DEPLOYER",
                    serverId: "artifactory",
                    releaseRepo: libs-release-local,
                    snapshotRepo: libs-snapshot-local
                )
            }
        }
        stage ('Publish build info') {
            steps {
                rtPublishBuildInfo (
                    serverId: "artifactory"
                )
            }
        }
    }
}
