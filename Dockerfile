FROM python:latest

RUN pip install openai
RUN pip install requests
RUN pip install flask

WORKDIR /app

COPY . .

ENV FLASK_APP=app.py

CMD flask --app app run --host=0.0.0.0
EXPOSE 5000
