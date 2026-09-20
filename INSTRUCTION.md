## Docker repository:

https://hub.docker.com/repository/docker/sancho1605/todoapp/general


## 1. Open terminal in the working directory

## 2. Run the build command 

`
docker build -t todoapp:1.0.0 .
`

## 3. Run container command

`
docker run -p 8080:8080 todoapp:1.0.0
`

## 4. Open in browser: http://localhost:8080

