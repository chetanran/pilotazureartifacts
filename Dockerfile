FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

# This will use Azure Artifacts (we'll update this in pipeline)
RUN pip install --index-url https://pkgs.dev.azure.com/chetanrana/secplayground/_packaging/python-packages-test/pypi/simple/ -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]