FROM python:3.10-slim

WORKDIR /app


COPY requirements.txt $APP_HOME/requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt

COPY . .

RUN apt-get update && apt-get install -y iproute2

EXPOSE 3000

CMD ["python3", "main.py"]