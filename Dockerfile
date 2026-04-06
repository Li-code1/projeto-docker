# Imagem base oficial do Python
FROM python:3.11-slim

# Configurações de ambiente
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    POETRY_VERSION=1.7.1 \
    POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_CREATE=false

# Adicionamos o PATH aqui explicitamente
ENV PATH="$POETRY_HOME/bin:$PATH"

# Instala dependências do sistema e o Poetry
RUN apt-get update && apt-get install -y curl && \
    curl -sSL https://install.python-poetry.org | python3 - && \
    apt-get clean

# Define o diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos de dependências
COPY pyproject.toml poetry.lock* ./

# ---caminho completo para garantir que o poetry seja achado ---
RUN /opt/poetry/bin/poetry install --no-interaction --no-ansi --no-root

# Copia o restante do código
COPY . .

# Comando para iniciar a aplicação
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]