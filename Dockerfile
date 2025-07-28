# ----------------- BUILD STAGE -----------------
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION:-3.10} AS build

# Set environment variable
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# ----------------- RUN STAGE -----------------
FROM python:${PYTHON_VERSION:-3.10} AS run

# Set environment variable
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy installed packages from build
COPY --from=build /usr/local /usr/local


# Copy application code
COPY . .

# Run migrations during image build
RUN python manage.py migrate

# Expose the Django port
EXPOSE 8080

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
