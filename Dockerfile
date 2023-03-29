FROM python:latest

RUN pip install openai
RUN pip install requests
RUN pip install flask

WORKDIR /app

COPY . .

ENV FLASK_APP=app.py

CMD python3 app.py
EXPOSE 80
