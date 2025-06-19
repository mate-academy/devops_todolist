# Використовуємо багатоетапну збірку для оптимізації розміру фінального образу.

# Етап збірки (Builder Stage)
# Цей етап встановлює залежності та виконує міграції.
ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-slim-buster AS builder

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Копіюємо файл requirements.txt
COPY requirements.txt .

# Створюємо віртуальне середовище та встановлюємо залежності в нього.
# Це гарантує, що всі пакети знаходяться в одному, відомому місці (/venv).
RUN python -m venv /venv && \
    /venv/bin/pip install --no-cache-dir --upgrade pip && \
    /venv/bin/pip install --no-cache-dir -r requirements.txt

# Копіюємо решту коду програми
COPY . .

# Виконуємо міграції бази даних та збираємо статичні файли,
# використовуючи Python з віртуального середовища.
RUN /venv/bin/python manage.py migrate
RUN /venv/bin/python manage.py collectstatic --noinput

# Етап виконання (Runner Stage)
# Цей етап створює мінімальний образ для запуску програми.
FROM python:${PYTHON_VERSION}-slim-buster AS runner

# Встановлюємо змінну середовища для оптимізації виведення логів Python у Docker.
ENV PYTHONUNBUFFERED=1

# Копіюємо віртуальне середовище з етапу builder.
# Це гарантує, що всі залежності доступні.
COPY --from=builder /venv /venv

# Встановлюємо робочу директорію для програми
WORKDIR /app

# Копіюємо тільки код програми з етапу builder
COPY --from=builder /app /app

# Відкриваємо порт, який буде слухати Django сервер
EXPOSE 8080

# Команда, яка буде виконуватися при запуску контейнера
# Використовуємо Python з віртуального середовища.
CMD ["/venv/bin/python", "manage.py", "runserver", "0.0.0.0:8080"]