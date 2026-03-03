FROM python:3.12-slim

WORKDIR /app

# Create non-root user (least privilege)
RUN groupadd -r appuser && useradd -r -g appuser appuser

# Copy application code
COPY app.py .

# Change ownership
RUN chown -R appuser:appuser /app

# Switch to non-root user
USER appuser

CMD ["python", "app.py"]