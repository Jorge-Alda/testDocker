FROM python:3.8.12-slim-bullseye

COPY requirements.txt requirements.txt
RUN apt update \
    && apt install -y git gcc  g++ \
    && pip install -r requirements.txt -e git+https://github.com/Jorge-Alda/SMEFT19.git@v3.0#egg=SMEFT19