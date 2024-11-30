Побудова та запуск додатку
markdown
Copy code
### Побудова та запуск ToDo додатку

#### Пререквізити:
- Docker має бути встановлений на вашій системі.

#### Кроки:
1. Побудуйте Docker-образ:
   ```bash
   docker build -t todoapp:1.0.0 .
Запустіть контейнер:

bash
Copy code
docker run -p 8080:8080 todoapp:1.0.0
Доступ до додатку у вашому браузері:

Перейдіть на http://localhost:8080, щоб отримати доступ до додатку.
bash
Copy code

#### **Docker Hub Репозиторій**
```markdown
### Docker Hub Репозиторій

Docker-образ доступний на Docker Hub:
[ToDo App Docker Hub Репозиторій](https://hub.docker.com/layers/salo2452/docker-by-practice/latest/images/sha256-d6b5f15e5c759eb4db66eff6c6cbbb23a96ad69583c6c8d317e1f8abd9939bc0?context=repo