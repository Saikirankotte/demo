# Use minimal base image
FROM python:3.11-alpine

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# Copy application
COPY app.py .

# Set ownership
RUN chown -R appuser:appgroup /app

USER appuser

# Run application
CMD ["python", "app.py"]