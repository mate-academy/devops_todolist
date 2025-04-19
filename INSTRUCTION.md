# Performs next steps to run TODO app on your local machine:

## if you are building it using GitHub repo:
- ### build image
  ```bash
    docker build -t <app-name>:<tag-name> --buld-args PYTHON_VERSION=<your-python-version> .
  ```
- ### run image
  ```bash
    docker run --name <container-name> -p 8080:8080 <app-name>:<tag-name>
  ```
- ### access application on your browser via `http://127.0.0.1:8080/`
  
## if you are building it using image pulled from DockerHub:
- ### pull image from [docker hub](https://hub.docker.com/r/olzhu95/todoapp/tags)
    ```bash
      docker pull olzhu95/todoapp:1.0.0
    ```
- ### build image
  ```bash
    docker run --name <container-name> -p 8080:8080 olzhu95/todoapp:1.0.0
  ```
- ### access application on your browser via `http://127.0.0.1:8080/`