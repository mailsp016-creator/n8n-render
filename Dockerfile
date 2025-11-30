FROM n8nio/n8n:latest

# Render sets PORT dynamically, so tell n8n to use it
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_SECURE_COOKIE=false
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Render exposes variable PORT, so we don’t hardcode 5678
EXPOSE $PORT

# Use ENTRYPOINT from base image, only override CMD
CMD ["n8n", "start"]
