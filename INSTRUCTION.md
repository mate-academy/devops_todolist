## Todo list application in Docker

This is a to-do list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI.

Link to the Docker Hub repository with the app image: [prostoponchik/todoapp](https://hub.docker.com/r/prostoponchik/todoapp)

## Instructions for building and running the container from GitHub repository

1. Clone the repository:

```
git clone https://github.com/ProstoPonchik/devops_todolist
```

2. Navigate to the project directory:

```
cd devops_todolist
```

3. Build the Docker image and name it `todoapp`:

```
docker build -t todoapp:1.0.0 .
```

4. Run the container:

```
docker run -d -p 8080:8080 --name todoapp_container todoapp:1.0.0
```

## Instructions for running the container from Docker Hub image

1. Pull the image from Docker Hub:

```
docker pull prostoponchik/todoapp:1.0.0
```

2. Run the container:

```
docker run -d -p 8080:8080 --name todoapp_container prostoponchik/todoapp:1.0.0
```

## Accessing the application via a browser

Open your web browser and navigate to `http://localhost:8080/` to access the landing page of the ToDo application. You can also access the API at `http://localhost:8080/api/`.