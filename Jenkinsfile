pipeline {
	agent any
	stages {
	  stage ('clone repo') {
        steps {
          git 'https://github.com/omeshwarkandari/formaven.git'
        }
    }
    stage ('test') {	
        steps {
          echo "testing"
        }      
    }
    stage ('build')	 {
         steps {
          echo "building"
        }    
    }
	}
}
