# OpenHands Railway Deployment Template

This is a template for deploying OpenHands (formerly OpenDevin) on [Railway](https://railway.app?referralCode=openhands) with a single click.

## Features
- **Local Runtime**: Uses `RUNTIME=local` to bypass Docker-in-Docker requirements, making deployment faster and cheaper.
- **Persistent Storage**: Mounts `/workspace` to a persistent volume so work isn't lost on restarts.
- **Sandboxed**: Runs with `SANDBOX_USER_ID=0` (root) to ensure file permissions work correctly on Railway.

## Deployment Instructions

1. **Deploy to Railway**:
   - Create a new project on Railway from this repository.
   - Railway will automatically detect the `railway.json` and configure the service.

2. **Configure Variables**:
   - During the setup flow (or in the "Variables" tab later), you **MUST** provide:
     - `LLM_API_KEY`: Your API key for the LLM provider (e.g., OpenAI, Anthropic).
     - `LLM_MODEL`: The model you want to use (default is `gpt-4o`, but you can change it to `claude-3-5-sonnet-20240620` etc.).

3. **Access OpenHands**:
   - Once deployed, Railway will generate a public domain (or you can add one).
   - Open that URL to start using OpenHands!

## Notes
- This setup overrides the default entrypoint to force a start without checking for a Docker socket.
- The workspace directory is persistent, but the environment itself is ephemeral (changes to installed system packages will rely on the `Dockerfile`).
