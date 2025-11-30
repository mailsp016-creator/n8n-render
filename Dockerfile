FROM n8nio/n8n:latest

# Render dynamically sets the PORT env variable
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_SECURE_COOKIE=false
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Recommended for PostgreSQL
ENV DB_TYPE=postgresdb

EXPOSE ${PORT}

CMD ["n8n"]
