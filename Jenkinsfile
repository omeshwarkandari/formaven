pipeline {
	agent any
	stages {
	  stage ('clone repo') {
        steps {
          git 'https://github.com/omeshwarkandari/formaven.git'
        }
      }
      stage ('test') {
          steps { 'test the code'}
      }
      stage ('build')	 {
          steps { 'build the code'}
      }
	}
}
