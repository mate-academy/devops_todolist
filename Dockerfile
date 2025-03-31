#Buid stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

#Copy the application code into the container
COPY . ./

#Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

# Copy the built application and installed dependencies from the build stage
# And execute DB migration
COPY --from=base /app .

#CREATE VENV & RUN VENV
#RUN python -m venv /app/venv

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

#Start the server
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8080"]

#EXPOSE port 8000 to the host
EXPOSE 8080