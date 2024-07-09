# Django ToDo list

This is a todo list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI. To do this task, you will need:

- CSS | [Skeleton](http://getskeleton.com/)
- JS  | [jQuery](https://jquery.com/)

## Explore

Try it out by installing the requirements (the following commands work only with Python 3.8 and higher, due to Django 4):

```
pip install -r requirements.txt
```

Create a database schema:

```
python manage.py migrate
```

And then start the server (default is http://localhost:8000):

```
python manage.py runserver
```

Now you can browse the [API](http://localhost:8000/api/) or start on the [landing page](http://localhost:8000/).

## Task

Create a `Dockerfile` for the ToDo app:

1. Fork this repository.
1. ToDo app should start inside a container without an error.
1. `Dockerfile` should contain the build stage and run stage.
1. Add `ARG` as Python base image version in `Dockerfile`.
1. Execute database migration as `RUN` instruction.
1. Add the `ENV PYTHONUNBUFFERED=1` variable to optimize the Python app for Docker (writing logs directly to `stdout` and `stderr` without buffering in the app process memory.
1. `runserver` should be followed by the `0.0.0.0:8080` parameter to start the Django server properly.
1. Build an image and name it `todoapp`.
1. The image should be pushed to your personal Docker Hub account into the `todoapp` repository with the `1.0.0` tag (`todoapp:1.0.0`).
1. `README.md` should contain a link to your personal Docker Hub repository win an app image.
1. `README.md` should contain all the instructions for building and running the container.
1. `README.md` should contain instructions on accessing the application via a browser.
1. Create PR with your changes and attach it for validation on a platform.

## Guide

1. You can find the adjusted image (todoapp:1.0.1) by following the [link](https://hub.docker.com/layers/dariasavchenko/todoapp/1.0.1/images/sha256-2d6d9bad93834f7bf80e589ede60c726bb028c60cdfed3b90c678c7136b6f6fa?context=repo) 
2. To run the app you can follow the instruction below:
   1. Clone the repository
   2. Go to the /devops_todolist
   3. Build the image:
    ```
    docker build -t todoapp:1.0.1 .
    ```
   4. Run the container:
   ```
    docker run -p 8080:8080 todoapp:1.0.1
    ```
3. Now you can access the [API](http://127.0.0.1:8080/api/) or the [landing page](http://127.0.0.1:8080/)