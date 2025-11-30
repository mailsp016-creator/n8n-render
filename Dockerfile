# ---- Base image ----
FROM n8nio/n8n:1.73.1

# ---- Environment ----
ENV N8N_SECURE_COOKIE=false
ENV N8N_DISABLE_PRODUCTION_MAIN_PROCESS=true
ENV N8N_LOG_LEVEL=debug
ENV N8N_DIAGNOSTICS_ENABLED=false

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# ---- Expose port ----
EXPOSE 5678

# ---- Start server ----
CMD ["n8n", "start"]
