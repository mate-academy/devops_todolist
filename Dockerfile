# build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS build
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt && \
    python manage.py migrate

# run stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY --from=build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY --from=build /app .
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]