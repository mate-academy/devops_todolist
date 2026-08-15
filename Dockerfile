ARG PYTHON_BASE_IMAGE=python:3.14-slim
FROM ${PYTHON_BASE_IMAGE} AS build

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --target=/install -r requirements.txt

FROM ${PYTHON_BASE_IMAGE} AS run

WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/install
COPY --from=build /install /install
COPY . .
RUN python manage.py migrate

RUN useradd --create-home appuser && chown -R appuser:appuser /app
USER appuser

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
