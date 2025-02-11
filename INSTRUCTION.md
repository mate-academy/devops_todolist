## Running from GitHub

1. To clone the app navigate to your projects folder and run:

```
git clone <repo link>
```
2. Then use the following command to build the image locally:
```
cd todoapp && docker build . -t todoapp:1.0.0
```
3. To run created container use next command:
```
docker run -p 8080:8080 --name todoapp todoapp:1.0.0
```
4. Connect to the server using your browser http://127.0.0.1:8080/ 

    You can change the port by altering -p tag like -p 80:8080 will map port 80 to your app 

## Running from DOCKERHUB

 Execute the following command to pull and run the container:
```
docker run workpolly/todoapp:1.0.0
```

```
https://hub.docker.com/repository/docker/workpolly/todoapp/tags/1.0.0/sha256-77b7d9b72506201f51e0de1adc0df5ca0964008fe0e11f6b83a6712fb4a279d3
```
