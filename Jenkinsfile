pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven 3.6"
    }
    stages {
        stage ('Clone') {
            steps {
               git 'https://github.com/omeshwarkandari/formaven.git'
            }
        }

        stage ('Artifactory configuration') {
            steps {
                rtServer (
                    id: "artifactory",
                    url: "http://ec2-54-89-19-142.compute-1.amazonaws.com:8081/artifactory",
                    credentialsId: admin
                )
                rtMavenDeployer (
                    id: "MAVEN_DEPLOYER",
                    serverId: "artifactory",
                    releaseRepo: example-repo-local,
                    snapshotRepo: example-repo-local
                )

                rtMavenResolver (
                    id: "MAVEN_RESOLVER",
                    serverId: "artifactory",
                    releaseRepo: example-repo-local,
                    snapshotRepo: example-repo-local
                )
            }
        }

        stage ('Exec Maven') {
            steps {
                rtMavenRun (
                    tool: MAVEN_TOOL, // Tool name from Jenkins configuration
                    pom: 'pom.xml',
                    goals: 'clean install',
                    deployerId: "MAVEN_DEPLOYER",
                    resolverId: "MAVEN_RESOLVER"
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
