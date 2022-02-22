pipeline{
	agent any
	stages {
	stage('terraform plan'){
		steps{
			sh 'pwd && ls'
			sh 'cd ./Terraform/ && ls'
			sh 'pwd && ls'
			sh 'terraform init'
			sh 'terraform plan'
		}
	}
	stage('terraform apply'){
		steps{
			sh 'cd ./Terraform/ec2/'
			sh 'terraform apply --auto-approve'
		}
	}
	stage('build docker backend image'){
		steps{
			sh 'docker build -t beckendjs ./backend/.'
		}
	}
    stage('build docker frontend image'){
		steps{
			sh 'docker build -t frontendjs ./frontend/.'
		}
	}
	stage('subir docker compose'){
		steps{
			sh 'docker compose up --build -d'
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