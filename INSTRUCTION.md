The public image for this application is available on Docker Hub:
* **Docker Hub Link:** [[https://hub.docker.com/r/hidan192/todoapp](https://hub.docker.com/repository/docker/vadym192/todoapp/)]
* **Image:** `hidan192/todoapp:1.0.0`

---

## Instructions for Building and Running the Container

### 1. Build the Docker Image
To build the Docker image locally from the source code, run the following command in the root directory of the project:

```bash
docker build -t todoapp .
```

### 2. Run the Docker Container
You can run the container using either your local build or directly by pulling it from Docker Hub.

```bash
docker run -d -p 8080:8080 --name todoapp_container todoapp
```


### Accessing the Application

Once the container is running:

Open your web browser.

Navigate to: http://localhost:8080 (or [http://127.0.0.1:8080](http://127.0.0.1:8080)).

You should see the Django TodoList application interface.