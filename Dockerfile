ARG TAG_VERSION="3.14.0a3"

FROM python:${TAG_VERSION}-slim-bookworm AS build
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY . .

FROM python:${TAG_VERSION}-alpine3.21
WORKDIR /app
COPY --from=build /app .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate
EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]


