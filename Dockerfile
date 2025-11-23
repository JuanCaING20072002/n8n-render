FROM n8nio/n8n:latest

WORKDIR /data

EXPOSE 5678

CMD ["n8n"]
# This Dockerfile uses the latest n8n image as a base. It sets the working directory to /data, exposes port 5678, and starts the n8