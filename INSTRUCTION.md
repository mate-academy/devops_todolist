 ## Link to Docker Hub repository win an app image:
 https://hub.docker.com/repository/docker/alex13thx/todoapp-python/general
 
## How to build and run the ToDo App container
###  Build the Docker image:
```bash
docker build -t todoapp --build-arg PYTHON_VERSION=3.12 .

```
### Run the Docker container::
```bash
docker run -p 8080:8080 todoapp
```

### For access the app in browser open the link:
http://localhost:8080
