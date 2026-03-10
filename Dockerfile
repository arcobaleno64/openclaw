FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

ENV OPENCLAW_HOST=0.0.0.0

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured"]
