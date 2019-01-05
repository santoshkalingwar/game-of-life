node {
    stage ("SCM") {
    git 'https://github.com/wakaleo/game-of-life.git'
   }
   stage ("maven build") {
       sh 'mvn package'
   }
   stage ("archive the artifact") {
       archiveArtifacts 'gameoflife-web/target/*.war'
   }
   

}