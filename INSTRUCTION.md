1. [Repository Link](https://hub.docker.com/repository/docker/gasterlab/todoapp)
2. Build using: `docker build -f Dockerfile . -t todoapp:<tag-name>`
3. Run app using: `docker run -d -p 8080:8080 todoapp:<tag-name>`
4. Access the app using host ip and port. For example: `127.0.0.1:8080`