# TodoApp Docker Deployment

Docker Hub Link: https://hub.docker.com/r/yurirr/todoapp

Instructions: 
1. Make sure Docker is installed.
2. Pull the image with
   
```bash
docker pull yurirr/todoapp:1.0.0
```

3. Run the container in detached mode and forward ports with(maps container port 8000 to host port 8080). 

```bash
docker run -d -p 8080:8000 yurirr/todoapp:1.0.0
```

4. Access the app via browser at `http://<host-ip>:8080` (ensure the port is open in firewall/security group).
