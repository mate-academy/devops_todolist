# ToDo App — Docker Instructions

This document provides all necessary instructions to run the ToDo app using Docker.

My Docker Hub account: [whatislavx](https://hub.docker.com/u/whatislavx)  
Docker image for this app: [whatislavx/todoapp:1.0.0](https://hub.docker.com/r/whatislavx/todoapp)

To run the application, you can either build the Docker image locally from the project repository or pull the prebuilt image from Docker Hub. To build locally, make sure you have Docker installed, then run `docker build -t todoapp:1.0.0 .` inside the project folder. After building, you can optionally tag the image for Docker Hub using `docker tag todoapp:1.0.0 whatislavx/todoapp:1.0.0` and push it with `docker push whatislavx/todoapp:1.0.0`.  

To run the container, execute `docker run -d -p 8080:8080 whatislavx/todoapp:1.0.0`. The app will be accessible in your web browser at `http://localhost:8080`. If you are running Docker on a remote server, replace `localhost` with the server's IP address. The container automatically runs Django migrations on start, so the database will be ready without additional commands.  

If you prefer to use the Docker Hub image directly without building, run `docker pull whatislavx/todoapp:1.0.0` followed by `docker run -d -p 8080:8080 whatislavx/todoapp:1.0.0`. You can manage the container with standard Docker commands such as `docker ps` to list running containers, `docker logs <container_id>` to view logs, `docker stop <container_id>` to stop it, and `docker rm <container_id>` to remove it. To remove the image, use `docker rmi whatislavx/todoapp:1.0.0`.  

Ensure that port 8080 is free before running the container. The app uses SQLite by default for its database, and all Python dependencies are installed from `requirements.txt`. By default, Django migrations run automatically when the container starts, so no manual migration commands are required. This allows the app to be immediately accessible via a browser after the container starts.
