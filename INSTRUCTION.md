https://hub.docker.com/repository/docker/aaanyyy/todoapp/tags/1.0.0/sha256-d47f1eff42d5480baeb05ab6445e9c5076272e349a1abf9746a99cb9e85790b4


To build a container from the image use the following command:
docker build . -t todoapp:1.0.0

To run the container use 
docker run -p 8080:8080 todoapp:1.0.0

To access the application open in a browser http://127.0.0.1:8080