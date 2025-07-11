FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/
COPY tests/ test/

ENV PYTHONPATH=/app

EXPOSE 5000

CMD ["python", "app/main.py"]
