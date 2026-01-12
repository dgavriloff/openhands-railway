# Use a recent stable version of OpenHands
FROM docker.all-hands.dev/all-hands-ai/openhands:0.24-nikolaik

# Switch to root to ensure permission to write to Railway volumes
USER root

# Set the workspace directory where the agent will save files
WORKDIR /workspace

# OpenHands runs on port 3000
EXPOSE 3000

# Override entrypoint to force start without looking for Docker socket
CMD ["python", "-m", "openhands.core.main", "-t", "start"]
