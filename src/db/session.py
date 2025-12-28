from sqlmodel import create_engine, Session
from contextlib import contextmanager

from src.core.config import settings

# SQLite requires check_same_thread=False for multi-threaded access (NiceGUI uses threads)
connect_args = {"check_same_thread": False} if settings.DATABASE_URL.startswith("sqlite") else {}
engine = create_engine(settings.DATABASE_URL, echo=True, connect_args=connect_args)


def get_db():
    """
    A dependency that yields a database session for a single API request.
    It is used with FastAPI's `Depends` system
    """
    with Session(engine) as session:
        yield session


@contextmanager
def get_db_context():
    """
    A context manager that provides a database session and ensures it's closed.
    Use this with a 'with' statement in the UI code.
    """
    with Session(engine) as session:
        yield session
