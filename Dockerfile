# Use the official OpenHands application image
FROM docker.openhands.dev/openhands/openhands:1.1

# Switch to root to ensure permission to write to Railway volumes
USER root

# Set workspace
WORKDIR /workspace

# Set host to 0.0.0.0 to ensure accessibility
ENV HOST=0.0.0.0
ENV PORT=3000

# Expose port
EXPOSE 3000

# Start command
CMD ["openhands", "serve"]
