pipeline {
  agent {
    node {
      label 'nodejs'
    }

  }
  stages {
    stage('BuildTrigger') {
      steps {
        openshiftCreateResource 'apiVersion: build.openshift.io/v1 kind: BuildConfig metadata:   name: time-stack-builder spec:   output:     to:       kind: ImageStreamTag       name: \'time-stack-builder:latest\'   source:     git:       ref: master       uri: https://github.com/MuhammadYasser2019/DevOps_Microservices.git     type: Git    strategy:     type: Docker     dockerStrategy:       dockerfilePath: Dockerfile   triggers:     - type: ImageChange       imageChange: {}     - type: ConfigChange'
      }
    }

  }
}