FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

# This will use Azure Artifacts (we'll update this in pipeline)
ARG PIP_INDEX_URL
RUN pip install --index-url ${PIP_INDEX_URL} -r requirements.txt
COPY app.py .

CMD ["python", "app.py"]