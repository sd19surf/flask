FROM python:latest
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["gunicorn", "-w", "3", "--bind=0.0.0.0:8080", "app:app"]