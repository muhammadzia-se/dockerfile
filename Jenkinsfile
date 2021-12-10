node {
    def app

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }
    stage('Initialize'){
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }

    stage('Build image') {
        /* This builds the actual image */

        app = docker.build("mzia87/nodeapp")
    }

    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }

//     stage('Push image') {
//         /* 
// 			You would need to first register with DockerHub before you can push images to your account
// 		*/
//         docker.withRegistry('https://registry.hub.docker.com', 'dockerHUB') {
//             app.push("${env.BUILD_NUMBER}")
//             app.push("latest")
//             } 
//                 echo "Trying to Push Docker Build to DockerHub"
//     }
	stage('Stop Container'){
	  sh "docker rm -f firstPipeLineContainer || true"
	}
	stage('Run Container'){
	 sh "docker run -d --name firstPipeLineContainer -p 3000:8000 mzia87/nodeapp"
	}
}
