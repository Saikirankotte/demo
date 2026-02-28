# Use minimal base image
FROM python:3.11-slim

# Create non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy files
COPY app.py .

# Install only required packages
RUN pip install --no-cache-dir flask

# Change ownership
RUN chown -R appuser:appuser /app

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]