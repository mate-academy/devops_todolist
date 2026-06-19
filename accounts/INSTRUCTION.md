link to the [dockerhub repo](https://hub.docker.com/repository/docker/alexey211204/todoapp/general)

buildeing image 
```bash
docker build -f Dockerfile . -t todoapp:1.0.0
```
runnung docker container from the image  
```bash
docker run -e ENV=TRUE -p 8080:8080 todoapp:1.0.0
```

Open http://localhost:8080/ in your browser