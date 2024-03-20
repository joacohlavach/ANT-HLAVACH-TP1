FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

RUN python manage.py collectstatic --noinput

ENTRYPOINT [ "sh", "entrypoint.sh" ]