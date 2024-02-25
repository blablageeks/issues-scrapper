FROM python:3.12-alpine

WORKDIR /scrapper

COPY requirements.txt /scrapper

RUN pip install --no-cache-dir -r requirements.txt

COPY src /scrapper/app

# update this later to use Gunicorn with Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

EXPOSE 80
