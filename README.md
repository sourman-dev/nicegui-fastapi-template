# FastAPI and NiceGUI Full-Stack Template

This repository provides a template for building full-stack web applications using **FastAPI** for the backend and **NiceGUI** for the frontend. It includes SQLite database, JWT authentication, and a clean project structure, making it an excellent starting point for demos, prototypes, and internal tools.

## Why FastAPI and NiceGUI?

Combining FastAPI and NiceGUI allows for the rapid development of web applications entirely in Python, which is a significant advantage for teams that want to avoid switching contexts between Python for the backend and JavaScript for the frontend.

- **FastAPI** is a modern, high-performance web framework for building APIs. It offers automatic interactive documentation, data validation powered by Pydantic, and an intuitive syntax that accelerates development.

- **NiceGUI** is a user-friendly, Python-based UI framework. It allows you to build web frontends without writing any HTML, CSS, or JavaScript. This is ideal for backend developers, data engineers, data scientists, and anyone who needs to create an interactive UI quickly.

This combination is perfect for **demo applications** because it enables a single developer to build and showcase a complete, interactive, and robust full-stack application in a fraction of the time it would take with traditional frameworks.

## Features

- **Modern Backend**: A robust backend powered by FastAPI.
- **Interactive Frontend**: A simple and clean UI built with NiceGUI.
- **Database Integration**: SQLite database (zero configuration, auto-creates on first run).
- **Authentication**: JWT token-based security for API endpoints.
- **Project Structure**: A clear separation between backend and frontend source code.
- **Automatic API Docs**: Interactive API documentation available out-of-the-box.

## Getting Started

Follow these instructions to get the project running on your local machine.

### Prerequisites

- Python 3.10+
- Git

### Setup Instructions

1.  **Clone the Repository**

    ```bash
    git clone https://github.com/jaehyeon-kim/nicegui-fastapi-template.git
    cd nicegui-fastapi-template
    ```

2.  **Create a Virtual Environment and Install Dependencies**

    Choose one of the following methods:

    #### Option A: Using `uv` (Recommended)

    ```bash
    # Install uv (if you haven't already)
    curl -LsSf https://astral.sh/uv/install.sh | sh

    # Create and activate virtual environment
    uv venv .venv
    source .venv/bin/activate  # macOS/Linux
    # .venv\Scripts\activate   # Windows

    # Install dependencies
    uv pip install -r requirements.txt
    ```

    #### Option B: Using `pip`

    ```bash
    # Create and activate virtual environment
    python -m venv .venv
    source .venv/bin/activate  # macOS/Linux
    # .\.venv\Scripts\activate  # Windows

    # Install dependencies
    pip install -r requirements.txt
    ```

3.  **Configure Environment Variables**

    Create a `.env` file in the project root by copying the template file.

    ```bash
    cp .env.template .env
    ```

    The default values work out of the box. The SQLite database will be created automatically at `data/app.db`.

4.  **Run the Application**

    ```bash
    python app.py
    ```

    The server will start and automatically restart whenever you make code changes.

### Accessing the Application

Once the server is running, you can access the following URLs:

**Application Frontend**: [http://localhost:8000](http://localhost:8000)

- The main user interface built with NiceGUI.

![](./images/demo.gif)

**API Docs (Swagger UI)**: [http://localhost:8000/docs](http://localhost:8000/docs)

- Interact with and test the API endpoints directly from your browser.

![](./images/docs.png)

**Alternate API Docs (ReDoc)**: [http://localhost:8000/redoc](http://localhost:8000/redoc)

- View a clean and concise API documentation.

![](./images/redoc.png)

### Stopping the Application

1.  **Stop the Server**
    Press `Ctrl+C` in the terminal where the application is running.

2.  **Deactivate the Virtual Environment**
    ```bash
    deactivate
    ```

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
