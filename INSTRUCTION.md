# 1. Docker hub repo:
https://hub.docker.com/repository/docker/svyat2x/todoapp/general

# 2. Create docker build:
docker build -t svyat2x/todoapp .
# Run the container:
docker run -p 8080:8080 svyat2x/todoapp

# 3. Open the website after container run:
http://localhost:8080
