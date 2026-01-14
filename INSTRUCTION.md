# Project Instructions

### Docker Hub Repository
You can find the image here:
`docker pull nickptrnko/todoapp:1.0.0`

### Build the Image
From the project root, run:
```
docker build -t todoapp:1.0.0 .
```
### Run the Container
Execute the following command to start the app:
```
docker run -p 8080:8080 todoapp:1.0.0
```
### Accessing the Application
Once the container is running, open your browser and navigate to: http://localhost:8080
