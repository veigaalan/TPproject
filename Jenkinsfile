pipeline{
	agent any
	stages {
	stage('terraform plan'){
		steps{
			sh 'pwd && ls'
			sh 'cd ./Terraform/ec2/ && ls'
			sh 'pwd && ls'
			sh './Terraform/ec2/terraform init'
			sh './Terraform/ec2/terraform plan'
		}
	}
	stage('terraform apply'){
		steps{
			sh './Terraform/ec2/terraform apply --auto-approve'
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