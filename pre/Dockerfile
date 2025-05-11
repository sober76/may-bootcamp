FROM python:3.11-slim

WORKDIR /app 
# mkdir app and cd app

COPY requirements.txt  /app

RUN pip install -r requirements.txt

COPY app.py /app/

EXPOSE 8000


# run this command when docker container starts ->
CMD ["python3", "app.py"]
