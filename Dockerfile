ARG PYTHON_VERSION=3.9

# First stage - Building a base
FROM python:${PYTHON_VERSION} AS build

# Creates and uses folder for our app 
WORKDIR /app

# Copying app files to the container
COPY . /app/



# 2nd stage - create run stage
FROM python:${PYTHON_VERSION} AS run

# Creates and uses folder for our app 
WORKDIR /app

# Copying from build image
COPY --from=build . .

# Upgrade pip
RUN pip install --upgrade pip 

# Install the requirements
RUN pip install -r requirements.txt

# Database migration process
RUN python manage.py migrate

# Envir variable to write logs directly to stdout and stderr without buffering
ENV PYTHONUNBUFFERED=1

# Exposing Django port
EXPOSE 8080

# Run Django’s development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]