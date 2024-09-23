FROM python:3.11-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

RUN pip install pipenv

COPY ../Pipfile .
COPY ../Pipfile.lock .
RUN pipenv install --system --deploy

COPY ../entrypoint.sh .
RUN chmod +x entrypoint.sh

COPY .. .

ENTRYPOINT ["./entrypoint.sh"]







