# INSTRUCTION.md

## Docker Hub

Образ опубліковано в персональному репозиторії Docker Hub:

👉 https://hub.docker.com/r/dmposhyvak/todoapp

Тег: `1.0.0`

## Збірка образу

```bash
docker build -t todoapp .
```

## Публікація образу в Docker Hub

```bash
docker login

docker tag todoapp:latest dmposhyvak/todoapp:1.0.0

docker push dmposhyvak/todoapp:1.0.0
```

## Запуск контейнера

Локально зібраний образ:

```bash
docker run -p 8080:8080 todoapp
```

Або образ безпосередньо з Docker Hub (не потрібно збирати самому):

```bash
docker run -p 8080:8080 dmposhyvak/todoapp:1.0.0
```

## Технічна примітка: PYTHONPATH

Залежності встановлюються в builder-стадії через `pip install --target /app/packages`
замість стандартного шляху site-packages. Через це змінна середовища
`ENV PYTHONPATH=/app/packages` встановлена **в обох стадіях** — і в builder
(щоб `manage.py migrate` міг знайти Django під час збірки), і в фінальній
run-стадії (щоб інтерпретатор Python міг знайти встановлені пакети під час
роботи контейнера). Без `PYTHONPATH` у run-стадії застосунок падає з
`ModuleNotFoundError` при старті, оскільки `ENV` не передається автоматично
між стадіями multi-stage build.

## Доступ до застосунку в браузері

Після запуску контейнера застосунок доступний за адресою:

- Головна сторінка: http://localhost:8080/
- API: http://localhost:8080/api/

Контейнер приймає з'єднання на порту `8080` всередині контейнера, який проброшено на порт `8080` хост-машини через параметр `-p 8080:8080`.