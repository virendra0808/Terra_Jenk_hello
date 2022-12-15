git clone 
cd 
 
cat < Jenkinsfile
pipeline {
         agent {
                label 'test'
               }
         stages {
                 stage('Build') {
                                steps {
                                    echo 'building your app!'
                                }
                 }
                 stage('Test') {
                                steps {
                                    echo 'testing your app!'
                                }
                 }
                 stage('Deploy') {
                                  steps {
                                        echo 'deploying your app!'
                                  }
                 }
              }
}
EOF
 
git add Jenkinsfile
git commit -m "pipeline def added"
git push
