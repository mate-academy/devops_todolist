ARG PYTHON_VERSION=3.13
FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

RUN python manage.py migrate

# ---- RUN STAGE -----
FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /root/.local /root/.local
COPY --from=build /app /app

ENV PATH=/root/.local/bin:$PATH

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

