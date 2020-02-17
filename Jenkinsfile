node {
    //checkout scm
    git 'https://github.com/tim-m-robinson/mssql-dev-demo.git'
    def sl_mssql = null
    
    stage('Init') {
      dir('docker') {
        sl_mssql = docker.build('sl-dev-mssql:lts')
      }
    }

    stage ('Build') {

    }

    stage ('Test') {

    }

    stage ('Package') {

        /* TO-DO
         * post to binary repo */
    }
}