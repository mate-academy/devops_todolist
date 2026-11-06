# Instructions

Docker Hub: https://hub.docker.com/r/drimasik/todoapp

Build the image from the project folder:
```bash
docker build -t todoapp:1.0.0 .
```

Run the local image:
```bash
docker run -d --name todoapp -p 8081:8080 todoapp:1.0.0
```

Or run the image from Docker Hub:
```bash
docker run -d --name todoapp -p 8081:8080 drimasik/todoapp:1.0.0
```

Open http://localhost:8081 in your browser.