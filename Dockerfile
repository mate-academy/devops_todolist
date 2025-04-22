# ---------- Build Stage ----------
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY requirements.txt .
RUN pip install --user -r requirements.txt

# ---------- Run Stage ----------
FROM python:${PYTHON_VERSION}-slim

COPY --from=base /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . ./

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]