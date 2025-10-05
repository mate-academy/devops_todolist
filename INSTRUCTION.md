# ToDo App Docker Instructions

## Docker Hub Repository
Образ доступний у вашому репозиторії Docker Hub:  
[https://hub.docker.com/r/illa140/todoapp/tags](https://hub.docker.com/r/illa140/todoapp/tags)  

Обов’язково має існувати тег `1.0.0`.

---

## Послідовність команд

### 1️⃣ Збірка локального образу
```bash
docker build -t todoapp:1.0.0 .

docker run -p 9090:8080 todoapp:1.0.0

docker tag todoapp:1.0.0 illa140/todoapp:1.0.0
docker login
docker push illa140/todoapp:1.0.0

docker run -p 8080:8080 illa140/todoapp:1.0.0




