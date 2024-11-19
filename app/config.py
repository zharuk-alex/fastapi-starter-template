from dotenv import load_dotenv
import os

load_dotenv()

POSTGRES_DB = os.getenv("POSTGRES_DB")
POSTGRES_DB_PORT = os.getenv("POSTGRES_DB_PORT")
POSTGRES_USER = os.getenv("POSTGRES_USER")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD")
POSTGRES_HOST = os.getenv("POSTGRES_HOST")
DATABASE_URL = os.getenv("DATABASE_URL")
