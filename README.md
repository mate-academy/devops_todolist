# Find the Docker image for the TodoApp application at [ikruglyak/todoapp](https://hub.docker.com/r/ikruglyak/todoapp)

# Use comand: 
docker pull ikruglyak/todoapp:1.0

# Build the Docker image
docker build -t todoapp:1.0 .

# Run the Docker container using the following command:
docker run -p 8080:8080 --name <name_of_your_container> todoapp:1.0

# To change port for local development:

docker run -p *your_port*:8080 --name <name_of_your_container> todoapp:1.0

# Open web browser on your machine 
http://localhost:8080

# Or:
http://localhost:*your_port*