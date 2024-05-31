Можна скопіювати:
docker pull oleksandrnechval55/todoapp-2

1. Треба клонувати репозиторій на свій ПК:
git clone https://github.com/....

2. Перейди в каталог з склонованим репозиторієм:

3. Необхідно забілдити:
docker build --build-arg PYTHON_VERSION=3.7 . -t todoapp:1.0.0

4. Запустити контейнер:
docker run -d -p 8080:8080 --name todoapp-Alex todoapp:1.0.0

5. Тепер застосунок доступний в Вашому браузері:
http://localhost:8080
