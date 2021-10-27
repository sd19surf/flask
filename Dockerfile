FROM python:latest
COPY . .
EXPOSE 8080
ENTRYPOINT ["gunicorn", "-w", "3", "--bind=0.0.0.0:8080"]