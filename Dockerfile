FROM python:3.9-slim

COPY ./app/requirements.txt .

# RUN pip install fastapi uvicorn
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080

COPY ./app/ /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]