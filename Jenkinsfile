pipeline {
    agent {slave1}
    
    environment {
        GOROOT= "/usr/local/go-1.13/go"
        GOBIN= "$GOROOT/bin"
    }
    
    stages {
        stage ('compile') {
            steps{
                sh '''
                    pwd
                    export PATH=$GOBIN:$PATH
                    go version  
                    go build
                ''' 
            }
        }
    }
}
