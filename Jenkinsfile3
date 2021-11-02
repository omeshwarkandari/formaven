pipeline {
	agent any
	stages {
	  stage ('clone repo') {
        steps {
          git 'https://github.com/omeshwarkandari/formaven.git'
        }
    }    
    stage ('build')	 {
         steps {
          echo "building"
        }    
    }
    stage ('test') {  
        steps {
          echo "testing"
        }      
    }
	}
}
