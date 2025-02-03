# Link to my personal Docker Hub repository win an app image
```
https://hub.docker.com/repository/docker/uka0001/todoapp/general
```
# To build the image
```
docker build -t todoapp .
```
# To run the image
```
docker run -p 8080:8080 todoapp
```
# To tag the image
```
docker tag todoapp uka0001/todoapp:1.0.0
```
# To push the image
```
docker push uka0001/todoapp:1.0.0
```
# To access the application via a browser
```
http://localhost:8080/api
```
