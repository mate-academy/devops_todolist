Docker Hub Repository :  https://hub.docker.com/r/yurirr/todoapp

Build Instructions
1. Clone the forked repository with your changes:
```
git clone https://github.com/yurii-chornyi/devops_todolist_yurii.git
cd devops_todolist_yurii

```

2. Build the Docker image with build arguments

```
docker build --build-arg PYTHON_VERSION=3.9 -t yurii-chornyi/todoapp:1.0.0 .

```

3. Run Instructions:
```
docker run -d -p 8080:8080 yurii-chornyi/todoapp:1.0.0
```

4. Access the Application

Open your browser and go to:

```
http://localhost:8080
```
You will see  the API root or the landing page of the ToDo app
