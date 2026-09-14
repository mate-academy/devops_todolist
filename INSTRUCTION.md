## 1. Docker Hub Repository
[https://hub.docker.com/r/rtemiis/todoapp](https://hub.docker.com/r/rtemiis/todoapp)

## 2. Сборка образа (Build)
```bash
docker build -t todoapp .
```

## 3. Запуск контейнера (Run)
```bash
docker run -p 8080:8080 todoapp
```

## 4. Как открыть приложение
Откройте браузер и перейдите по ссылке: http://localhost:8080