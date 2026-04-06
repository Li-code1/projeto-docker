# FastAPI + Docker + Poetry 🚀

Este repositório contém um exercício prático focado na conteinerização de uma aplicação **FastAPI** utilizando **Docker** e **Docker Compose**, com o gerenciamento de dependências feito através do **Poetry**.

O objetivo deste projeto é criar um ambiente de desenvolvimento isolado, consistente e de fácil replicação.

## 🛠️ Tecnologias Utilizadas

  * **Python 3.11**
  * **FastAPI** (Framework Web)
  * **Poetry** (Gerenciador de dependências e pacotes)
  * **Docker & Docker Compose** (Containerização e Orquestração)

## 🚀 Como Executar o Projeto

Certifique-se de ter o **Docker** e o **Docker Compose** instalados em sua máquina.

### 1\. Clone o repositório

```bash
git clone https://github.com/Li-code1/projeto-docker.git
cd projeto-docker
```

### 2\. Subir os contêineres

Este comando irá construir a imagem (instalando o Poetry e as dependências listadas no `pyproject.toml`) e iniciar o serviço:

```bash
docker-compose up --build
```

> **Nota:** Se preferir rodar em segundo plano, adicione a flag `-d`: `docker-compose up --build -d`.

### 3\. Acessar a aplicação

Após o build, a API estará disponível em:

  * **Home:** [http://localhost:8000](https://www.google.com/search?q=http://localhost:8000)
  * **Documentação (Swagger UI):** [http://localhost:8000/docs](https://www.google.com/search?q=http://localhost:8000/docs)

## 📂 Estrutura do Projeto

  * `Dockerfile`: Configuração da imagem Docker, otimizada com o uso do binário absoluto do Poetry para garantir a instalação das dependências.
  * `docker-compose.yml`: Orquestração do container, mapeamento de portas e volumes para *Hot Reload*.
  * `main.py`: Ponto de entrada da aplicação FastAPI.
  * `pyproject.toml`: Definição de dependências e metadados do projeto.

## 🛑 Parar a aplicação

Para encerrar os serviços e remover os contêineres:

```bash
docker-compose down
```