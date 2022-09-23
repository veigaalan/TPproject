pipeline{
	agent any
	stages {
    stage('Stop container backend'){
		steps{
			sh 'docker stop container backendjs'
		}
	}

    stage('Stop container frontend'){
		steps{
			sh 'docker stop container frontendjs'
		}
	}
    stage('delete frontend'){
		steps{
			sh 'docker rm frontendjs'
		}
	}
    stage('delete backend'){
		steps{
			sh 'docker rm backendjs'
		}
	}
	stage('build docker backend image'){
		steps{
			sh 'docker build -t beckendjs ./backend/'
		}
	}
    stage('build docker frontend image'){
		steps{
			sh 'docker build -t frontendjs ./frontend/'
		}
	}
	stage('subir docker compose'){
		steps{
			sh 'docker-compose up --build -d'
		}
	}
	stage('sleep para container'){
		steps{
			sh 'sleep 10'
		}
	}
	stage('teste da aplicação'){
		steps{
			sh 'chmod +x teste-app.sh'
			sh './teste-app.sh'
		}
	}
    }
}
