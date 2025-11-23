FROM n8nio/n8n:latest

WORKDIR /data

# Render asigna un puerto dinámico en la variable de entorno PORT.
# n8n por defecto escucha en 5678; ajustamos para que use PORT si existe.
EXPOSE 5678

CMD ["sh", "-c", "export N8N_HOST=0.0.0.0; export N8N_PORT=${PORT:-5678}; n8n"]
# Este Dockerfile usa la imagen oficial y fuerza a n8n a escuchar en el puerto dinámico que Render define.