# Instructions


Download image from [repository](https://hub.docker.com/r/nemereno/todoapp)

Pull image:

```
docker pull nemereno/todoapp
```

OR

Build image from Dockerfile:
```
docker build -t todoapp:1.0.0 .
```

Run container via this command
```
docker run -p 8080:8080 todoapp:1.0.0
```

Access application via browser by [link](http://localhost:8080)
