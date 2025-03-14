11. #link Docker Hub
https://hub.docker.com/repository/docker/alinamoskovchuk18/todoapp/tags/1.0.0/sha256-4bc0b3e4b9159e86c0d13c4646ce583f7b25433a17f5fec0d420f5723a6a1220

12. #instructions for building and running the container
docker build -t todoapp:1.0.0 .
docker images #IMAGE ID
docker tag a0caee5093b5 alinamoskovchuk18/todoapp:1.0.0
docker push alinamoskovchuk18/todoapp:1.0.0
docker run -d --name todoapp -p 8080:8080 alinamoskovchuk18/todoapp:1.0.0

13. #instructions on accessing the application via a browser
For example: '127.0.0.1:8080'
