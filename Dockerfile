FROM n8nio/n8n:1.48.0

# Render establece el PORT dinámico
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}

# Si quieres desactivar el error de permisos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Exponer el puerto por defecto de n8n
EXPOSE 5678

CMD ["/usr/local/bin/n8n"]
