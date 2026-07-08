[Docker Image](https://hub.docker.com/r/somewellich/todoapp)

## Instructions for building and running the container

1. First, build the local image named exactly `todoapp`:
``` bash
docker build -t todoapp .
```
Next, we need to add a tag with the personal Docker Hub namespace.
Explanation: `todoapp` is the local image name. `somewellich/todoapp:1.0.0` is the namespaced repository tag required by Docker Hub to know where to upload the image and what version it is.

```bash
docker tag todoapp somewellich/todoapp:1.0.0
```
Run the container:

```bash
docker run -d -p 8080:8080 somewellich/todoapp:1.0.0
```
## Instructions on accessing the application via a browser

http://localhost:8080/

OR

[http://127.0.0.1:8080/](http://127.0.0.1:8080/)