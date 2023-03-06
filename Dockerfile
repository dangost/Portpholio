FROM python:3.9-slim

WORKDIR /app/

COPY src /app/src/
COPY views /app/views/
COPY runner.py /app/
COPY requirements.txt /app/

RUN pip install -r requirements.txt

CMD ["python3", "runner.py"]
