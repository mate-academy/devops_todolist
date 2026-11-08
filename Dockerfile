
# base ==========================================
ARG PYTHON_VERSION=3.12-slim
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# run stage
# ==========================================
FROM python:${PYTHON_VERSION} AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1 \
    PATH="/opt/venv/bin:$PATH"

COPY --from=base /opt/venv /opt/venv

COPY accounts/ ./accounts/
COPY api/ ./api/
COPY lists/ ./lists/
COPY todolist/ ./todolist/
COPY manage.py ./

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]