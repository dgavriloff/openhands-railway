# Use the Runtime image which has Node, Python, and other tools pre-installed
FROM docker.openhands.dev/openhands/runtime:1.1-nikolaik

# Switch to root
USER root

# Install OpenHands application (CLI)
RUN pip install openhands-ai

# Set workspace
WORKDIR /workspace

# Set host to 0.0.0.0 to ensure accessibility
ENV HOST=0.0.0.0
ENV PORT=3000

# Expose port
EXPOSE 3000

# Start command
CMD ["openhands", "serve"]
