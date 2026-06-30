# Инструкция по запуску ToDo App

Ссылка на Docker Hub: https://hub.docker.com/r/iondan587/todoapp

## Как собрать образ:
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp .

## Как запустить контейнер:
docker run -p 8080:8080 todoapp

## Как открыть в браузере:
Перейти по адресу http://localhost:8080