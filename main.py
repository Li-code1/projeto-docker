from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
    # Buscando a variável que você configurou no docker-compose ou .env
    app_name = os.getenv("APP_NAME", "Meu App FastAPI")
    return {
        "Hello": "World",
        "Projeto": app_name,
        "Status": "Rodando dentro do Docker! 🐳"
    }