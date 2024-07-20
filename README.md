# Django ToDo list

This is a todo list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI. To do this task, you will need:

- CSS | [Skeleton](http://getskeleton.com/)
- JS | [jQuery](https://jquery.com/)

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

https://hub.docker.com/r/fredfredburger/todoapp
To download an image run : docker pull fredfredburger/todoapp
to run it : docker run -p 8080:8080 fredfredburger/todoapp
