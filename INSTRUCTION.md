Reporsitory link: https://hub.docker.com/repository/docker/taniakolesnik/todoapp/general

https://hub.docker.com/repository/docker/taniakolesnik/todoapp/tags/1.0.0/sha256-93e43f1752ab80cdf8388769571a6026a3d8ac6cf83c588796f0642e8dece6e9

Build with:

docker build -t taniakolesnik/todoapp:1.0.0 .

To run docker, run below in Terminal:  

docker run -d -p 8080:8080 --name todo taniakolesnik/todoapp:1.0.0  

Access web site with your browser using url below:

http://localhost:8080/

To stop server run:

docker stop todo



