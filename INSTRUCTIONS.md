# INSTRUCTIONS.md

## 1. Build Docker image

To build the Docker image, run:

docker build -t flask-mysql-app .

This command creates a multi-stage Docker image that installs Python dependencies, sets up MySQL, and applies database migrations during the build process.

---

## 2. Run the container

Start the application container with:

docker run -p 8080:8080 flask-mysql-app

The application will be available at:

http://localhost:8080

---

## 3. Database migrations

MySQL is installed inside the container.  
Migrations are executed automatically during the build stage using:

RUN service mysql start && mysql -u root < init.sql

The init.sql file:

- creates the database app_db  
- creates user app_user  
- grants privileges  
- creates the counter table  

---

## 4. Application start

The container starts the Flask application using:

ENTRYPOINT ["python", "app.py"]

---

## 5. Project structure

app.py  
Dockerfile  
requirements.txt  
init.sql  
docker-logo.png  
INSTRUCTIONS.md  

---

## 6. Notes

- The Dockerfile uses a multi-stage build (builder + runtime).  
- MySQL is installed in the runtime stage.  
- Environment variable PYTHONUNBUFFERED=1 is set to ensure logs are flushed immediately.  
- No hardcoded IPs are used — MySQL runs inside the same container.
