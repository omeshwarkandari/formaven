pipeline {
    agent any
    stages {
        stage('clone code'){
            steps{
                git 'https://github.com/omeshwarkandari/formaven.git'
            }
        }
        stage ('Artifactory configuration') {
            steps {
                rtServer (
                    id: 'artifactory',
                    url: 'http://3.87.239.247:8081/artifactory',
                    username: 'test',
                    password: 'test@123'
                    
                )
                rtMavenDeployer (
                    id: 'DEPLOYER',
                    serverId: 'artifactory',
                    releaseRepo: 'libs-release-local',
                    snapshotRepo: 'libs-snapshot-local',
                    properties: ['key1=valu1', 'key2=value2']
                )

                rtMavenResolver (
                    id: 'RESOLVER',
                    serverId: 'artifactory',
                    releaseRepo: 'libs-release',
                    snapshotRepo: 'libs-snapshot'
                )
            }
        }
        stage ('Exec Maven') {
            steps {
                rtMavenRun (
                    tool: 'maven 3.6',   
                    pom: 'pom.xml',
                    goals: 'clean install',
                    deployerId: 'DEPLOYER',
                    resolverId: 'RESOLVER'
                )
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
        stage ('Publish build info') {
            steps {
                rtPublishBuildInfo (
                    serverId: 'artifactory'
                )
            }
        }       
        stage ('deploy') {
            steps {
                sshagent(['tomcat8']) {
                   sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/CICD/target/*.war ec2-user@172.31.80.190:/opt/apache-tomcat-8.5.68/webapps"
               }
           }
       }       
    }
}
