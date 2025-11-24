FROM node:18-bullseye

# Instala dependencias del sistema
RUN apt-get update && apt-get install -y python3 build-essential && rm -rf /var/lib/apt/lists/*

# Crea usuario no root
RUN useradd --user-group --create-home --shell /bin/false n8n

# Instala n8n
RUN npm install --global n8n@1.48.0

# Crea carpeta de datos y da permisos
RUN mkdir -p /home/n8n/.n8n && chown -R n8n:n8n /home/n8n

USER n8n
WORKDIR /home/n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}
EXPOSE 5678

CMD ["n8n"]
