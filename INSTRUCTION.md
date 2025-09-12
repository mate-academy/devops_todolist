# 1. Docker hub repo:
https://hub.docker.com/repository/docker/svyat2x/todoapp/tags/latest/sha256-1bf9eac1ad6a4b23e9236483cba67531fffe7edbbb8642371f1ebbec206bb629

# 2. Create docker build:
docker build -t svyat2x/todoapp:1.0.0 -t todoapp .
# Push and run the container:

Push: docker push svyat2x/todoapp:1.0.0
Run: docker run -p 8080:8080 svyat2x/todoapp:1.0.0
docker run -p 8080:8080 svyat2x/todoapp

# 3. Open the website after container run:
http://localhost:8080
