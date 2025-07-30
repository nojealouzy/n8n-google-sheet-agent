# Use the official n8n image
FROM n8nio/n8n

# Optional: Basic Auth if needed
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# Expose the default port
EXPOSE 5678
