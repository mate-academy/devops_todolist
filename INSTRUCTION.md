Link to Docker Hub todoapp repository https://hub.docker.com/repository/docker/vasylsmol88/todoapp/general

How to build and run the todoapp:
1. Run command: docker build -t todoapp:1.0.0 .
2. Check that image was created, run: docker images
3. Run docker command: docker run -d --name todoapp -p 8080:8080 todoapp:1.0.0
4. Verify that docker container was started and run command: docker ps

How to access aplication using browser:
1. Open any browser
2. Input http://127.0.0.1:8080 or localhost:8080 URL
3. You should be able to see the UI for todoapp