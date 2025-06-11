Personal Docker HUB: https://hub.docker.com/repositories/dimak20

How to build the container:
1) Pull directly from the hub:
```bash
docker pull dimak20/todoapp:1.0.0
```
OR Build from the current repo:
```bash
docker build -t todoapp:1.0.0 .
```
2) Run the container:
```bash
docker run dimak20/todoapp:1.0.0 

OR

docker run todoapp:1.0.0
```
3) Get access to the application via browser.
You need to add -p ports when starting the container
```bash
docker run -p 8000:8000 dimak20/todoapp:1.0.0 

OR

docker run -p 8000:8000 todoapp:1.0.0
```