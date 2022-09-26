pipeline{
	agent any
	
	stages{
		stage('Build Application'){
			steps{
				sh 'mvn clean package'
			}
			post{
				success{
					echo "Now archiving the artifacts...."
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
		stage('Create tomcat Docker image'){
			steps{
				sh 'docker build . -t mytomcatapplication:${env.BUILD_ID}'
			}
		}
	}
}

