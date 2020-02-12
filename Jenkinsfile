pipeline {
    environment {
        GOROOT=/usr/local/go-1.13/go
        GOBIN=$GOROOT/bin
        PATH=$GOROOT/bin:$PATH
    }
    agent any
    
    stages {
        stage {
          sh 'go build'
        }
    }
}
