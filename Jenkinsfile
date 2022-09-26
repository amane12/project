Pipeline{
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
			sh 'docker build . -t mytomcatapplication:${env.BUILD_ID}'
		}
	}
}
