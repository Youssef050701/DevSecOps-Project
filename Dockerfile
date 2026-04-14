# Utilisation d'une image de base Python
FROM python:3.9-slim

# Définition du dossier de travail
WORKDIR /app

# Copie du fichier de dépendances
COPY requirements.txt .

# Installation des dépendances (Flask, etc.)
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code de l'application (app.py)
COPY app.py .

# Port utilisé par Flask
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]