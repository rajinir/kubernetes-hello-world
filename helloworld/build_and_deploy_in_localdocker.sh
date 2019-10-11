echo "Creating the docker imag using local docker enginee"
sudo docker build -f ./docker/Dockerfile -t helloworld:latest ./app/.

echo "Verify the image on local docker engine"
docker image ls

echo "Run it in host Docker engine, in detached mode"
docker run -d -p 5001:5000 helloworld

echo "Test local docker"
curl -X GET http://localhost:5001?name=spongebob


