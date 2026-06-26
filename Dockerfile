ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user -r requirements.txt

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=builder /root/.local /root/.local

COPY --from=builder /app .

ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]