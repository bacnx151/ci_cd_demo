FROM python:3.10-slim

WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Cài dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]