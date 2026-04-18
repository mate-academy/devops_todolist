ARG PYTHON_VERSION=3.11

#build stage
FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --user -r requirements.txt

#run stage 
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1
ENV PATH="/root/.local/bin:$PATH"

COPY --from=builder /root/.local /root/.local
COPY . .

EXPOSE 8080

CMD [ "python" , "manage.py", "runserver", "0.0.0.0:8080"]
