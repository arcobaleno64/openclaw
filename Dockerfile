FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 8080

ENV PORT=8080

RUN node openclaw.mjs config set gateway.controlUi.allowInsecureAuth true
RUN node openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true
CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured", "--bind", "lan", "--port", "8080"]
