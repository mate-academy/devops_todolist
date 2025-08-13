Docker Hub repository: https://hub.docker.com/repository/docker/vitaliiog/todoapp/general

Instructions for building and running the container:
docker build -t todoapp:1.0.0 . 
docker run -p 8080:8080 todoapp:1.0.0

Instructions on accessing the application via a browser:
After executing the command "docker run -p 8080:8080 todoapp:1.0.0" the application will be available on localhost:8080.
Open browser and go to http://localhost:8080 to access the app.