### Link to image on dockerhub - [here](https://hub.docker.com/repository/docker/vsupruniuk/todoapp/tags/1.0.0/sha256-fcd5dcfef7fc270187b67f7f0abfe3f847e7d9bb52ee165090f50766dafe8fe9?tab=layers)

## To build the image run the following command:
```shell
    docker build -t todoapp:1.0.0 .
```

## To run the container from the image, run the following command and open browser at [localhost:8080](http://localhost:8080):
```shell
    docker run -p 8080:8080 todoapp:1.0.0
```
