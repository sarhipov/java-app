/// hello world app Jenkinsfile
@Library('shared-library') _

buildDocker(
        agentLabel: '',
        dockerRegistryCredentialsId: 'dockerhub',
        dockerImageName: 'sarhipov/hello-world:latest'
)

k8sDeploy(
        agentLabel: '',
        kubernetesDeploymentName: 'hello-world',
        dockerImageName: 'sarhipov/hello-world:latest',
        kubeconfigCredentialsId: 'dev-kubeconfig'
)