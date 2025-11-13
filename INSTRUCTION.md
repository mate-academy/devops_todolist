## Run container via docker

This is instruction of how you can run the container locally


Firstly, you need to build a image using this command
```
docker build -t {imageName} .
```

Then you need to run this image 

```
docker run -d --name {containerName} -p 8080:8080 {imageName}
```

Then you can visit the [http://localhost:8080] to check the website
Link where you can download this image [https://hub.docker.com/r/stassytnykov/todoapp]