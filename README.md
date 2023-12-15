# Django-Todolist

Django-Todolist is a todolist web application with the most basic features of most web apps, i.e. accounts/login, API and (somewhat) interactive UI.

---
CSS | [Skeleton](http://getskeleton.com/)
JS  | [jQuery](https://jquery.com/)

## Explore
Try it out by installing the requirements. (Works only with python >= 3.8, due to Django 4)

    pip install -r requirements.txt

Create a database schema:

    python manage.py migrate

And then start the server (default: http://localhost:8000)

    python manage.py runserver


Now you can browse the [API](http://localhost:8000/api/)
or start on the [landing page](http://localhost:8000/)

## Task 
Create a Dockerfile for the TODO app:
- TODO App should start inside a container without an error
- Dockerfile should contain the build stage and run stage
- Add ARG to be used as python base image version in dockerfile
- Execute db migration as RUN instruction
- Add ENV variable `ENV PYTHONUNBUFFERED=1`. This is needed for optimisation of python app for docker (writing logs directly to stdout and stderr without buffering in the app process memory
- `runserver` should be followed by `0.0.0.0:8080` parameter to properly start Django server
- Build an image and name it todoapp
- An image should be pushed to your personal docker hub account into a repository named “todoapp”, with a tag 1.0.0 (todoapp:1.0.0)
- README.md should contain all the instructions on how to build and run the container.
- README.md should contain instructions on how to access the application via a browser.
- Create PR with your changes and attach it for validation on a platform

