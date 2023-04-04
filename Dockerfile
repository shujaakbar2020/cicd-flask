FROM python:3.9-alpine

WORKDIR /api

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]