FROM python:3.6.0-alpine

WORKDIR /app
COPY . /app

RUN pip install -r /app/requirements.txt

ENV POST_DATABASE_HOST post_db
ENV POST_DATABASE posts

RUN echo "PWD is: $PWD"

ENTRYPOINT ["python3", "post_app.py"]
#CMD ["sh"]
