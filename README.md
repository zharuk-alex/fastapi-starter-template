# FastAPI Starter Template

This project is a template for quickly creating FastAPI applications with Docker, SQLAlchemy, PostgreSQL, and Alembic.

## Features

- **FastAPI**: A modern web framework for building APIs.
- **SQLAlchemy**: ORM for database interaction.
- **PostgreSQL**: A robust relational database management system.
- **Alembic**: A tool for database migrations and schema management.
- **Docker**: Containerization for easy deployment and scalability.

---

## Installation Steps

### Prerequisites

Ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)

### 1. Clone the Repository

```bash
git clone https://github.com/zharuk-alex/fastapi-starter-template.git
cd fastapi-starter-template
```

### 2. Configure Environment Variables

Create a `.env` file in the root directory and add the following variables:

```env
POSTGRES_DB=mydatabase
POSTGRES_USER=postgres
POSTGRES_PASSWORD=mysecretpassword
POSTGRES_HOST=db
POSTGRES_PORT=5432

PGADMIN_DEFAULT_EMAIL=admin@example.com
PGADMIN_DEFAULT_PASSWORD=admin
```

### 3. Build and Start the Containers

Run the following command to start the application:

```bash
docker-compose up --build
```

### 4. Access the Application

- **FastAPI Docs**: Open [http://localhost:8000/docs](http://localhost:8000/docs) to access the interactive API documentation.
- **PGAdmin**: Open [http://localhost:5050](http://localhost:5050) and log in using the credentials from the `.env` file.

---

## Database Migrations with Alembic

### 1. Create a New Migration

To generate a new migration file:

```bash
docker-compose exec app alembic revision --autogenerate -m "Migration message"
```

### 2. Apply Migrations

To apply the migrations to the database:

```bash
docker-compose exec app alembic upgrade head
```
