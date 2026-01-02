Посилання на мій публічний репозиторій Docker Hub:
https://hub.docker.com/r/goldbernik/todoapp

Команда для збірки образу з використанням ARG для вибору версії Python:
docker build --build-arg PYTHON_VERSION=3.8 -t todoapp .

Команда для встановлення персонального тегу версії 1.0.0:
docker tag todoapp goldbernik/todoapp:1.0.0

Команда для завантаження готового образу в мій Docker Hub:
docker push goldbernik/todoapp:1.0.0

Команда для запуску контейнера з прокиданням порту 8080 на хост:
docker run -p 8080:8080 goldbernik/todoapp:1.0.0

Інструкція щодо змінних та міграцій:
У Dockerfile додано ENV PYTHONUNBUFFERED=1 для виводу логів без затримок.
Команда RUN python manage.py migrate виконується під час збірки для ініціалізації БД.
Застосунок запускається на 0.0.0.0:8080 для доступу ззовні контейнера.

Як відкрити застосунок у браузері:
Перейдіть за адресою http://localhost:8080 після того, як контейнер запуститься..