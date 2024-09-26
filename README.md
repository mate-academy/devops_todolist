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

# Django ToDo List

It is a to-do list management web application developed using Django.

## Link to Docker Hub

[Link to application image on Docker Hub](https://hub.docker.com/repository/docker/maks2531/todoapp/general)

## How to run the application

1. **Clone the repository:**
   ```bash
   git clone git@github.com:MaksimGolev/devops_todolist.git
   cd devops_todolist
2. **Build a Docker image:**
   ```python
   docker build -t maks2531/todoapp:1.0.0 .
3. **Run the Docker container:**
   ```python
   docker run -p 8080:8080 maks2531/todoapp:1.0.0

## Accessing the Application

After starting the container, you can access the application at [landing page](http://localhost:8080)
