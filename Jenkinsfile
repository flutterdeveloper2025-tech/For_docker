pipeline {
    agent any

    environment {
        APP_NAME = "for-docker-app"   // ✅ Tumhara app name
        IMAGE = "for-docker-app:dev"  // Docker image name
        PORT = "8081"                 // Port mapping
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',  // ya 'docker-dev' agar dev branch chahiye
                    url: 'https://github.com/flutterdeveloper2025-tech/For_docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $IMAGE .
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f $APP_NAME || true
                docker run -d \
                  --name $APP_NAME \
                  -p $PORT:80 \
                  $IMAGE
                '''
            }
        }

        stage('Smoke Test') {
            steps {
                sh '''
                STATUS=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:$PORT)

                if [ "$STATUS" != "200" ]; then
                    echo "❌ App not reachable"
                    exit 1
                fi

                echo "✅ App is running in Docker"
                '''
            }
        }
    }

    post {
        success {
            echo "🎉 Docker DEV deployment successful"
        }
        failure {
            echo "❌ Docker deployment failed"
        }
    }
}
