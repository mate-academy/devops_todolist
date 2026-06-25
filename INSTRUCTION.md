## Docker Hub
https://hub.docker.com/repository/docker/klptu/todoapp/general

## Збірка образу
```bash
docker build -t klptu/todoapp:1.0.0 .
```

## Пуш на Docker Hub
```bash
docker push klptu/todoapp:1.0.0
```

## Запуск контейнера
```bash
docker run -p 8080:8080 klptu/todoapp:1.0.0
```

## Відкрити в браузері
Після запуску відкрий http://localhost:8080