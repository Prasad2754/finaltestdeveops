FROM public.ecr.aws/python/python:3.11-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
