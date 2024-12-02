## Посилання на Docker Hub

Образ програми доступний у вашому репозиторії Docker Hub за наступним посиланням:  
**https://hub.docker.com/repository/docker/fredisson11/todoapp**

---

## Інструкція по збірці і запуску контейнера

### Завантаження готового образу

1. Завантажте Docker образ із Docker Hub:
   ```
   docker pull fredisson11/todoapp:1.0.0
   ```

2. Запустіть контейнер:
   ```
   docker run -d -p 8080:8080 fredisson11/todoapp:1.0.0
   ```

3. Відкрийте додаток у браузері:
   ```
   http://localhost:8080
   ```

---

### Локальна збірка образу

Якщо ви хочете зібрати образ локально:

1. Клонувати репозиторій:
     ```
   git clone <repo_url>
   cd <repo_name>
     ```

2. Зібрати Docker образ:
     ```
   docker build -t todoapp:1.0.0 .
     ```

3. Запустити контейнер:
     ```
   docker run -d -p 8080:8080 todoapp:1.0.0
     ```

4. Відкрити додаток у браузері:
     ```
   http://localhost:8080
     ```

---

### Доступ до програми через браузер

Після запуску контейнера (через завантажений образ чи локальну збірку) додаток буде доступний за адресою:  
**http://localhost:8080**