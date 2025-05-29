FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y gcc libpq-dev

WORKDIR /app

COPY . /app
COPY entrypoint.sh /app/entrypoint.sh

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["./entrypoint.sh"]
