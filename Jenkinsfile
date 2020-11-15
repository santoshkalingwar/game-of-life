pipeline {
    agent any 
    stages {
        stage('SCM') { 
            steps {
                //
                git 'https://github.com/wakaleo/game-of-life.git' 
            }
        }
        stage('BUILD and Package ') { 
            steps {
                // 
                sh 'mvn package'
            }
        }
        stage('archive the artifact') { 
            steps {
                // 
                archiveArtifacts 'gameoflife-web/target/*.war'
            }

        }
        stage('Build the docker image') { 
            steps {
                // 
                sh 'docker build -t gameoflife:4.0 .'
            }
            
        }
    }
}