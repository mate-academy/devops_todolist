Local Installation(Use Python 3.8+)

1) pip install -r requirements.txt 
2) python manage.py migrate
3) python manage.py runserver 0.0.0.0:8080


DockerHub - https://hub.docker.com/repository/docker/vanyas627/todoapp/general

Image: docker build -t vanyas627/todoapp:1.0.0 .

Run Container: docker run -p 8080:8080 vanyas627/todoapp:1.0.0 

Open the app in browser: http://localhost:8080