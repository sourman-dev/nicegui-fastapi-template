#!/bin/bash

if [ -f .env ]; then
  set -a
  source .env
  set +a
else
  echo "WARNING: .env file not found. Please create one."
  exit 1
fi

if [ -d "venv" ]; then
  source venv/bin/activate
fi

# --- DEBUGGING LINE ---
echo "DEBUG PASSWORD IS: '$FIRST_SUPERUSER_PASSWORD'"
# ----------------------

echo "Starting Uvicorn server..."
uvicorn app.main:app --reload