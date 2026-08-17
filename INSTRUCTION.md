
## Docker Hub Repository
Link to the image: [https://hub.docker.com/r/baga56789/todoapp](https://hub.docker.com/r/baga56789/todoapp)

## How to Build the Image Locally
To build the image from the Dockerfile, run the following command in the project directory:
`docker build -t todoapp .`

## How to Run the Container
To start the application in detached mode, run:
`docker run -d --name todo_container -p 8080:8080 baga56789/todoapp:1.0.0`

## How to Access the Application
Once the container is running, open your web browser and navigate to:
[http://localhost:8080](http://localhost:8080)
