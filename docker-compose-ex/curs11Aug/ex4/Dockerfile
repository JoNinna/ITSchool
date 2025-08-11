FROM python:slim

WORKDIR /app

COPY ./app.py /app
COPY ./requirements.txt /app

RUN pip install -r requirements.txt

CMD ["sh", "-c", "flask run --host=0.0.0.0"]
