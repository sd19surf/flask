
FROM python:latest as tester
WORKDIR /app
COPY . .
RUN pip install -r tests/requirements.txt
RUN python -m pytest tests

FROM python:latest as production
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "gunicorn", "-w", "3", "--bind=0.0.0.0:8080", "wsgi:app" ]
