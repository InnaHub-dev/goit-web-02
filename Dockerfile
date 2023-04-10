FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./bot_assistant ./bot_assistant

WORKDIR /app/bot_assistant

ENTRYPOINT ["python", "__main__.py"]