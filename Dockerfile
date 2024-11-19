FROM python:3.11-slim

# Встановлення необхідних системних бібліотек
RUN apt-get update && apt-get install -y gcc libpq-dev && rm -rf /var/lib/apt/lists/*

# Робоча директорія
WORKDIR /app

# Копіюємо файли для Poetry
COPY pyproject.toml poetry.lock ./

# Встановлюємо Poetry та залежності
RUN pip install poetry && poetry install --no-root
RUN pip install fastapi uvicorn sqlalchemy psycopg2-binary



# Копіюємо весь код додатку
COPY ./app ./app

# Запуск FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
