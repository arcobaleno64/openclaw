FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 8080

ENV PORT=8080

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured", "--bind", "lan", "--port", "8080"]
