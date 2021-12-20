FROM python:3.9-slim

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY ./app/requirements.txt .
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080
COPY ./app/ /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]