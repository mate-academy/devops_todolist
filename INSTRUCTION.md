Docker HUB repository: https://hub.docker.com/r/bohn13/todoapp/tags

At first you should make a local build of this repo if you want to edit it after pulling.
Use command: "docker build -t todoapp:1.0.0 ."

Instruction for building and launching locally the website using this image in default state:

1. Pull the docker image from repository;
2. Run the image via "docker run -p 8080:8080 bohn13/todoapp:1.0.0" command;
3. Enjoy the working properly container!

Instruction for accessing the website:

1. After running "docker run -p 8080:8080 bohn13/todoapp:1.0.0" command the website will be launched;
2. For accessing the site use technical address: "http://127.0.0.1:8080/".
3. Enjoy and work.

Note: Migrations are performed during build time because the project uses SQLite.