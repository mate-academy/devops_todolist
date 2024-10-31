# Build Stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
COPY requirements.txt manage.py ./
RUN pip install --upgrade pip && \
pip install -r requirements.txt
COPY . .
# Run it babyyy
FROM python:${PYTHON_VERSION}
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY --from=base /app /app
RUN pip install --upgrade pip && \
pip install -r requirements.txt
RUN python manage.py migrate
CMD ["python", "manage.py","runserver", "0.0.0.0:8080"]
EXPOSE 8080
