## Instructions for launch "Todo App"

Here is link to: [Docker Hub Repository](https://hub.docker.com/repository/docker/mykytakovalenko/todoapp/general)
## 1. Clone the repository
First, clone the repository from git
````bash
git clone https://github.com/betterthink/devops_todolist.git
````
## 2. Build the Docker image
For building docker image, execute this command:

```bash
docker build -t todoapp:1.0.0 .
```
## 3. Running container
For running docker container, execute this command:
```bash
docker run -p 8080:8080 todoapp:1.0.0
```
## 4. Access via browser
For access via browser follow the link 
 ```
 http://localhost:8080
 ```