pipeline {
    agent any

    triggers {
        // Trigger on PR creation
        pollSCM('H/1 * * * *') // Adjust based on your needs
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the PR
                checkout scm
            }
        }
        stage('Build Check') {
            steps {
                script {
                    // Run the build command
                    // Replace 'npm run build' with your actual build command
                    sh 'pnpm install'
                    sh 'pnpm dev'
                }
            }
        }
        stage('Type Checking') {
            steps {
                script {
                    // Perform TypeScript type checking
                    // Replace 'npm run type-check' with your actual type-check command
                    sh 'npm run type-check'
                }
            }
        }
    }

    post {
        success {
            // Actions to take upon a successful build
            echo 'Build and type-check succeeded!'
        }
        failure {
            // Actions to take upon a failed build
            echo 'Build or type-check failed!'
        }
    }
}

