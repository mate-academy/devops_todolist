## Посилання на Docker Hub

Образ програми доступний у вашому репозиторії Docker Hub за наступним посиланням:  
**https://hub.docker.com/repository/docker/naziamoff/todoapp/**

---

## Інструкція по збірці і запуску контейнера

### Завантаження готового образу

1. Завантажте Docker образ із Docker Hub:
   ```
   docker pull naziamoff/todoapp:1.0.0
   ```

2. Запустіть контейнер:
   ```
   docker run -d -p 8080:8080 naziamoff/todoapp:1.0.0
   ```

3. Відкрийте додаток у браузері:
   ```
   http://localhost:8080
   ```

---
