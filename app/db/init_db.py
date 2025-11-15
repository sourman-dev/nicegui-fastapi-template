from sqlmodel import Session, SQLModel
from app.core.config import settings
from app.repositories.user import user_repo
from app.models import models
from app.db.session import engine


def init() -> None:
    SQLModel.metadata.create_all(engine)

    with Session(engine) as session:
        user = user_repo.get_by_email(db=session, email=settings.FIRST_SUPERUSER)
        if not user:
            user_in = models.UserCreate(
                email=settings.FIRST_SUPERUSER,
                password=settings.FIRST_SUPERUSER_PASSWORD,
                is_superuser=True,
            )
            user_repo.create(db=session, obj_in=user_in)
