ARG PYTHON_VERSION=3.11-slim

#Bulding stage
FROM  python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

#Run stage
FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /root/.local /root/.local
COPY --from=build /app /app

ENV PATH=/root/.local/bin:$PATH

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]