FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# 1. Installazione dipendenze di sistema
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    libedit2 \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# 2. Configurazione NuSMV
COPY ./modelchecker-dir /opt/nusmv
ENV PATH="/opt/nusmv/NuSMV-2.7.1-linux64/bin:${PATH}"

# Se NuSMV dovesse darti errore di "libedit.so.0 non trovato", 
# questa riga (con '|| true' per evitare blocchi) risolve il problema su Ubuntu 24.04
RUN ln -s /usr/lib/x86_64-linux-gnu/libedit.so.2 /usr/lib/x86_64-linux-gnu/libedit.so.0 || true

# 3. Creazione e "Attivazione" del Virtual Environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV

# Aggiungendo la cartella 'bin' del venv al PATH, pip e python useranno sempre il venv!
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# 4. Installazione pacchetti Python (ora andrà a buon fine nel venv)
RUN pip3 install --no-cache-dir \
    notebook \
    jupyterlab \
    jupyterlab-rise

# 5. Configurazione Workspace
WORKDIR /workspace
COPY . /workspace

EXPOSE 8888

# 6. Avvio (JupyterLab troverà l'eseguibile grazie al PATH modificato)
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]