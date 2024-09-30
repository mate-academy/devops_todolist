# Personal Docker Hub repository with an app image

```
https://hub.docker.com/repository/docker/p1tonidze/todoapp/general
```

# The instructions for building and running the container

Execute the next command to build the container
```
docker build -f Dockerfile . -t todoapp:<image_version>
```

Execute the next command to run the container
```
docker run -d -p 8080:8080 todoapp:<image_version>
```

# The instructions on accessing the application via a browser
- Open your browser
- Put the next link into the browser: http://localhost:8080/
- Press enter

# Django ToDo list

This is a todo list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI. To do this task, yo u will need:
