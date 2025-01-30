Todo App - Docker Instructions
🔗 Docker Hub Repository
You can find the Docker image for this application on Docker Hub:
👉 Docker Hub Repository Link https://hub.docker.com/repository/docker/miamarichka/todo_image/general

🚀 Build and Run Instructions
1️⃣ Clone the Repository
If you haven’t already, clone the project repository:
git clone https://github.com/miamarichka/devops_todolist
cd https://github.com/miamarichka/devops_todolist

2️⃣ Build the Docker Image
To build the Docker image locally, run:
docker build -t miamarichka/todo_image:1.0 .

3️⃣ Run the Container
To start the container, use:
docker run --name todo_container -p 8080:8080 miamarichka/todo_image:1.0
--name todo_container → Assigns a name to the container.
-p 8080:8080 → Maps container port 8080 to host port 8080.
miamarichka/todo_image:1.0 → Uses the image from Docker Hub.

If port 8080 is occupied, you can run it on a different port:
docker run --name todo_container -p 9000:8080 miamarichka/todo_image:1.0
Then, access it at http://localhost:9000.

4️⃣ Pull Image from Docker Hub
If you don’t want to build the image yourself, you can pull it from Docker Hub:
docker pull miamarichka/todo_image:1.0
Then run it:
docker run -p 8080:8080 miamarichka/todo_image:1.0

5️⃣ Access the Application
Once the container is running, open your browser and go to: 👉 http://localhost:8080

If you used a different port (e.g., 9000), visit: 👉 http://localhost:9000
