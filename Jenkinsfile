pipeline {
    agent any
    
    environment {
        GOROOT= "/usr/local/go-1.13/go"
        GOBIN= "$GOROOT/bin"
    }
    
    stages {
        stage {
           sh '''
            pwd
            export PATH=$GOBIN:$PATH
            go version  
            go build
           ''' 
        }
    }
}
