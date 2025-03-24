# ToDo App Docker Instructions

## Docker Hub Repository

Образ приложения доступен в Docker Hub по следующей ссылке:
[Docker Hub Repository](https://hub.docker.com/r/sano11/multistage-py)

## Сборка образа

Для сборки Docker образа выполните следующую команду в корневой директории проекта:

```bash
docker build -t todoapp:1.0.0 .
```

Вы также можете указать версию Python при сборке (по умолчанию используется Python 3.10):

```bash
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
```

## Запуск контейнера

Для запуска приложения выполните:

```bash
# Используя локально собранный образ:
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0

# Или напрямую из Docker Hub:
docker run -d -p 8080:8080 --name todoapp sano11/multistage-py
```

Флаги команды:

- `-d`: запуск в фоновом режиме
- `-p 8080:8080`: проброс порта 8080 из контейнера на хост
- `--name todoapp`: имя контейнера

### Дополнительные команды Django

Благодаря использованию ENTRYPOINT, вы можете запускать любые команды Django:

```bash
# Создание миграций
docker run --rm todoapp makemigrations

# Применение миграций
docker run --rm todoapp migrate

# Создание суперпользователя
docker run -it --rm todoapp createsuperuser

# Запуск shell
docker run -it --rm todoapp shell
```

## Доступ к приложению

После запуска контейнера приложение будет доступно по адресу:
http://localhost:8080

Основные эндпоинты:

- Главная страница: http://localhost:8080/
- API интерфейс: http://localhost:8080/api/
- Админ-панель: http://localhost:8080/admin/

## Публикация образа в Docker Hub

1. Войдите в свой аккаунт Docker Hub:

```bash
docker login
```

2. Добавьте тег для вашего образа:

```bash
docker tag todoapp:1.0.0 sano11/multistage-py
```

3. Отправьте образ в Docker Hub:

```bash
docker push sano11/multistage-py
```

## Управление контейнером

Остановка контейнера:

```bash
docker stop todoapp
```

Удаление контейнера:

```bash
docker rm todoapp
```

Просмотр логов:

```bash
docker logs todoapp
```

## Устранение неполадок

1. Если порт 8080 уже занят:

```bash
docker run -d -p 8081:8080 --name todoapp todoapp:1.0.0
```

2. Для проверки статуса контейнера:

```bash
docker ps -a
```

3. Для просмотра логов в реальном времени:

```bash
docker logs -f todoapp
```
