# n8n-google-sheet-agent
Everyone use google sheets to perform slice and dice of their data, But we use n8n to automate that whole process of slice and dice. 

Great! Based on your project JSON (`nojealouzy_project1.json`), I will now generate a beautifully structured `README.md` for your project.

---

## Project Title: **n8n + LangChain + Google Sheets: Agentic RAG Workflow**

This project demonstrates a low-code **Retrieval-Augmented Generation (RAG)** pipeline using [n8n](https://n8n.io/) and [LangChain](https://www.langchain.com/) with Google Sheets integration. It acts as an intelligent chatbot agent capable of responding to user queries using both OpenAI and data stored in Google Sheets.

---

### Live Demo

[https://n8n-google-sheet-agent.onrender.com](https://n8n-google-sheet-agent.onrender.com) — *(Login required)*

> Use your own API keys and Google Sheets credentials to run this securely.

---

### Project Structure

This project includes:

* `TablesToAgenticRAG.json` → n8n workflow export file.
* `Dockerfile` → for containerizing and deploying to platforms like Render.
* `.env` or Render environment variables → securely store API keys.

---

### 🔧 Features

Chat-triggered webhook
Integration with OpenAI (GPT)
Secure access via basic authentication
Reads dynamic data from Google Sheets
Agentic response generation using LangChain agent
Easily deployable using Docker

---

### Prerequisites

You need the following credentials to run this workflow:

* OpenAI API Key (`OPENAI_API_KEY`)
* Google Sheets API credentials (OAuth2)
* Google Sheet ID and Sheet Name
* Render deployment with the following environment variables:

  ```
  N8N_BASIC_AUTH_ACTIVE=true
  N8N_BASIC_AUTH_USER=admin
  N8N_BASIC_AUTH_PASSWORD=your_password
  WEBHOOK_URL=https://your-app-name.onrender.com/webhook/...
  ```

---

### Setup Instructions

#### 1. Clone this repository

```bash
git clone https://github.com/nojealouzy/n8n-google-sheet-agent.git
cd n8n-google-sheet-agent
```

#### 2. Setup environment variables

On Render or using `.env`, define:

```env
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=your_secure_password
```

#### 3. Deploy using Docker

Build and run locally:

```bash
docker build -t n8n-agentic-rag .
docker run -p 5678:5678 --env-file .env n8n-agentic-rag
```

Or deploy on Render (auto-build from Dockerfile).

---

### Usage

1. Open `https://your-deployment-url.onrender.com`
2. Login using the configured credentials.
3. Activate the workflow `TablesToAgenticRAG`.
4. Send a chat input via webhook (or test from n8n editor).
5. The agent uses:

   * OpenAI's GPT for generating responses.
   * Google Sheets data for context retrieval.

---

### Security Notes

* Your exported `.json` file contains:

  * Webhook IDs
  * Google Sheets URLs
  * Agent configuration
* To prevent misuse:

  * Use **Webhook Secrets** (advanced option).
  * Remove or regenerate `webhookId` before publishing public version.
  * Use dummy sheet IDs or replace them with `{{ ENV_VAR }}` placeholders.

---

### Example Applications

* HR or Event Chatbot that fetches participant/company details
* Smart FAQ agent using spreadsheet-based content
* Internal assistant for Google Sheets record querying

---

### Author

([@nojealouzy](https://github.com/nojealouzy))**

---

### 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.


