pipeline {
    agent any
    environment{
        GIT_REPO='https://github.com/Shivprasadbendre/Terraform'
        BRANCH='main'
        CLONE_DIR="demo"
    }
    stages {
        stage('Clone Repository') {
            steps {
                dir("${CLONE_DIR}"){
                git branch:"${BRANCH}",url:"${GIT_REPO}"
                }
            }
        }
        stage("Install terraform"){
            steps{
                sh '''
                  sudo yum install -y yum-utils shadow-utils
                  sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
                  sudo yum -y install terraform
                  '''
            }
        }
        stage("run the app"){
            steps{
                steps {
                dir("${CLONE_DIR}"){
                sh '''
                sudo terraform init
                sudo terraform plan
                sudo terraform apply 
                '''
             }
           }
        }
     }
    }
}
