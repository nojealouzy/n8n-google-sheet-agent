FROM n8nio/n8n

# Enable basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

EXPOSE 5678

# Optional: base image already has this, so you could remove it
CMD ["n8n", "start"]
