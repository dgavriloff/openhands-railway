# Use a recent stable version of OpenHands
FROM ghcr.io/all-hands-ai/openhands:1.1.0

# Switch to root to ensure permission to write to Railway volumes
USER root

# Set the workspace directory where the agent will save files
WORKDIR /workspace

# OpenHands runs on port 3000
EXPOSE 3000

# Override entrypoint to force start without looking for Docker socket
CMD ["python", "-m", "openhands.core.main", "-t", "start"]
