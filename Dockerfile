FROM python:3.9-alpine3.15

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app
COPY ./app /usr/src/app

RUN adduser \
    	--disabled-password \
    	# --no-create-home \
    	django-user

ENV PATH="/py/bin:$PATH"

USER django-user