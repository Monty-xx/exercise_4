FROM python:3.12-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput

EXPOSE 8000

# Gunicorn (production) – replace 'your_project_name'
CMD ["sh", "-c", "python manage.py migrate && gunicorn --bind 0.0.0.0:8000 exercise_4.wsgi:application"]
