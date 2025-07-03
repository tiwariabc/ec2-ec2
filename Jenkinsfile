pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    TF_IN_AUTOMATION      = 'true'
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init -input=false'
      }
    }

    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -input=false -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      
      steps {
        input message: 'Do you want to apply?', ok: 'Yes, apply'
        sh 'terraform apply -input=false tfplan'
      }
    }
 stage('Terraform destroy') {
      
      steps {
        input message: 'Do you want to destroy?', ok: 'Yes, apply'
        sh 'terraform apply -input=false tfplan'
      }
    }

    
  }
}
