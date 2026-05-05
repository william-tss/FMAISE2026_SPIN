# Usa un'immagine Python leggera come base
FROM python:3.11-slim

# Evita che Python generi file .pyc e forza l'output in tempo reale
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Installiamo le dipendenze di sistema necessarie per compilare SPIN
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    make \
    yacc \
    flex \
    bison \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Scarichiamo e compiliamo SPIN (versione 6.5.1 come esempio)
WORKDIR /opt
RUN curl -L https://github.com/nimble-code/Spin/archive/refs/tags/version-6.5.1.tar.gz -o spin.tar.gz \
    && tar -xvzf spin.tar.gz \
    && cd Spin-version-6.5.1/Src \
    && make \
    && cp spin /usr/local/bin/ \
    && cd /opt && rm -rf spin.tar.gz Spin-version-6.5.1

# Impostiamo la cartella di lavoro per il tuo progetto
WORKDIR /app

# Copiamo il file dei requisiti e installiamo le dipendenze Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamo il resto del tuo codice nel container
COPY . .

# Comando di default (puoi cambiarlo con il tuo script principale)
CMD ["spin", "--version"]
