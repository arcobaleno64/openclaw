FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured"]
