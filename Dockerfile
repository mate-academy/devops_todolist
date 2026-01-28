ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

ENV PYTHONUNBUFFERED=1

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

COPY --from=build /opt/venv /opt/venv
COPY manage.py requirements.txt ./
COPY todolist/ todolist/
COPY lists/ lists/
COPY accounts/ accounts/
COPY api/ api/

RUN python manage.py migrate --noinput

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
