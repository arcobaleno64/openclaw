FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 8080

ENV PORT=8080

RUN node openclaw.mjs config set gateway.controlUi.allowInsecureAuth true
RUN node openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true
RUN node openclaw.mjs config set gateway.controlUi.dangerouslyDisableDeviceAuth true
    RUN node openclaw.mjs config set agents.defaults.model.primary "google/gemini-3.1-flash-lite-preview"
CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured", "--bind", "lan", "--port", "8080"]
