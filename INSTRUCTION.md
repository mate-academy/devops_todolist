## Docker Hub Repository

Image is available at: [https://hub.docker.com/r/gurianov88/todoapp]

## Building the Docker Image

Clone the repository and navigate into it:

```bash
git clone https://github.com/IgorSteal/devops_todolist.git
cd devops_todolist
```

Build the image and tag it as `todoapp:1.0.0`:

```bash
docker build -t todoapp:1.0.0 .
```

## Running the Container

```bash
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```


## Accessing the Application

- **Landing page:** [http://localhost:8080](http://localhost:8080)
- **API browser:** [http://localhost:8080/api/](http://localhost:8080/api/)