# ---------- Build Stage ----------
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# ---------- Run Stage ----------
FROM python:${PYTHON_VERSION}-slim

COPY --from=base /usr/local /usr/local
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY manage.py ./
COPY todolist ./todolist
COPY accounts ./accounts
COPY api ./api
COPY lists ./lists

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]