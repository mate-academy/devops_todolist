arg py_version=3.14
from python:${py_version} as build

workdir /app

copy requirements.txt .
run pip install --no-cache-dir --prefix=/install -r requirements.txt

copy . .

from python:${py_version}-slim as run
env PYTHONUNBUFFERED=1

workdir /app
copy --from=build /app /app
copy --from=build /install /usr/local
run python manage.py migrate

expose 8000

cmd ["python", "manage.py", "runserver", "0.0.0.0:8000"]