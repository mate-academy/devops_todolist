App image: https://hub.docker.com/layers/matekola/todoapp/1.0.0/images/sha256-f30f86c3c0362199dcefd4147b44acd2afb90e3f3bf9f51e8dd93a33da77fd10

Running locally:
 - run `docker pull matekola/todoapp:1.0.0 & docker run -p 8080:8080 matekola/todoapp:1.0.0` in a preferred terminal
 - the app will be available at `localhost:8080`

Building and running locally:
  - run `docker build . -t todoapp` `docker run -p 8080:8080 todoapp` in a preferred terminal
  - run `docker run -p 8080:8080 todoapp`
  - the app will be available at `localhost:8080`