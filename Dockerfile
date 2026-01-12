# Use the Runtime image which has Node, Python, and other tools pre-installed
FROM docker.openhands.dev/openhands/runtime:1.1-nikolaik

# Switch to root
USER root

# Install OpenHands application
RUN pip install openhands

# Set workspace
WORKDIR /workspace

# Expose port
EXPOSE 3000

# Start command
CMD ["python", "-m", "openhands.core.main", "-t", "start"]
