FROM python:3.8.12 as build

WORKDIR /usr/app
RUN python -m venv /usr/app/venv
ENV PATH="/usr/app/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt -e git+https://github.com/Jorge-Alda/SMEFT19.git@v3.0#egg=SMEFT19

FROM python:3.8.12-slim
RUN apt update && apt install -y libgomp1
WORKDIR /usr/app
COPY --from=build /usr/app/venv ./venv
WORKDIR /home
ENV PATH="/usr/app/venv/bin:$PATH"
