FROM python:2.7-slim

WORKDIR /flask-world

COPY . /flask-world

RUN pip install flask

CMD ["python", "app.py"]