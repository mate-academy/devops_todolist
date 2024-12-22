## Інструкції з використання

### Запуск додатку за допомогою Docker

1. Побудуйте Docker-образ:
   ```sh
   docker build -t yur11lesyk/devops-todolist:1.1 .

2. Запустіть контейнер
   docker run -p 8080:8080 yur11lesyk/devops-todolist:1.1

3. Відкрийте браузер за адресою:
(http://localhost:8080)
