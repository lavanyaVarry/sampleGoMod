pipeline {
    agent { label 'linux_slave' }
    
    environment {
        GOROOT= "/usr/local/go-1.13/go"
        GOBIN= "$GOROOT/bin"
    }
    
    stages {
        stage ('compile') {
            steps{
                sh '''
                    pwd
                    sudo docker build -t builder .
                    sudo docker images
                ''' 
            }
        }
    }
}
