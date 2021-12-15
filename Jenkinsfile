pipeline {
    agent any

    tools {
        maven "MAVEN"
        jdk "JDK"
    }

   
        stage('Initialize'){
           
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /opt/maven"
            
        }
        stage('Build') {
         
                dir("/var/lib/jenkins/workspace/Maven_Docker_pipeline/projet_j2e/") 
                sh 'mvn -B -DskipTests clean package'
                
            
            }
        
     
    post {
       always {
          junit(
        allowEmptyResults: true,
        testResults: '*/test-reports/.xml'
      )
      }
   } 
}
