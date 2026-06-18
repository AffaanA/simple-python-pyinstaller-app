pipeline
{
  agent any
  environment {
 	DOCKER_HUB_REPO = "affaana/python-app"
    	CONTAINER_NAME = "python-app"
    	DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
  }
  stages {
	stage('Build the docker image'){
	steps{
		sh 'docker build -t $DOCKER_HUB_REPO .'
	}
  }
  stage('Test'){
	steps{
		sh 'docker run $DOCKER_HUB_REPO python -m unittest test_calc'
	}
  }
  stage('Push'){
	steps{
		sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		sh 'docker push $DOCKER_HUB_REPO'
	}
  }
}
}
