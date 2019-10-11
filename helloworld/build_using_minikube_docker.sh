echo "Set the environment to use minikube docker deamon"
eval $(minikube docker-env)

echo "Creating the docker image"
cd app
docker build -f Dockerfile -t helloworld:latest .
cd ..

echo "Now ssh into minikube to verify"


