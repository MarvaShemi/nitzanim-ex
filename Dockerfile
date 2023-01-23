FROM python:3.10.6
MAINTAINER MarvaShemi
WORKDIR /app
COPY . .
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
RUN pip install --editable .
RUN flask init-db
EXPOSE 5000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

