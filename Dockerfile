FROM python:3.10

WORKDIR /NetflixMovieCatalog

copy . .

RUN pip install -r requirements.txt

CMD ["python3","app.py"]