# ✅ Use the official n8n image which already has n8n installed
FROM n8nio/n8n

# ✅ Optional: Set up basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# ✅ Expose port
EXPOSE 5678

# ✅ Start n8n (no need to override if using base image)
CMD ["n8n", "start"]
