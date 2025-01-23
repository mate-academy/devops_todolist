## Docker Hub Repository
### The Docker image for the ToDo app is available on Docker Hub. You can find it at the following link:
```
https://hub.docker.com/r/bohdanfsd/todoapp
```

In order to run the app do:

```
docker pull bohdanfsd/todoapp:1.0.0
docker run -d --name todoapp-container -p 8080:8080 bohdanfsd/todoapp:1.0.0
```
 Verify Running Containers
Ensure the container is running:
```
docker ps
```
Accessing the Application
Open a web browser. Go to 
```
http://localhost:8080.
```
You should see the ToDo app interface.