FROM python:3.13-slim
WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY chaotic-customer ./
EXPOSE 8080

RUN groupadd -r appgroup && useradd -r -g appgroup appuser
USER appuser

CMD ["python3", "chaotic-customer"]