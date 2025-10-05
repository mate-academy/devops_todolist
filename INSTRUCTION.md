# ToDo App Docker Instructions

## Docker Hub Repository
Перевірте, що ваш образ доступний на Docker Hub:
[https://hub.docker.com/repository/docker/illa140/todoapp](https://hub.docker.com/repository/docker/illa140/todoapp)

Обов’язково повинен бути тег `1.0.0`.

---

## Послідовність команд для роботи з Docker

### 1️⃣ Збірка локального образу
```bash
docker build -t todoapp:1.0.0 .

docker run -p 8080:8080 todoapp:1.0.0

python manage.py runserver 0.0.0.0:8080

docker tag todoapp:1.0.0 illa140/todoapp:1.0.0

docker login

docker push illa140/todoapp:1.0.0

docker run -p 8080:8080 illa140/todoapp:1.0.0

docker run -p 9090:8080 illa140/todoapp:1.0.0


