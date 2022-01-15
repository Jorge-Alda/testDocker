FROM ubuntu

COPY requirements.txt requirements.txt
RUN apt update && apt install -y \
    git \
    python3.8 \
    python3-pip
RUN pip install -r requirements.txt -e git+https://github.com/Jorge-Alda/SMEFT19.git@v3.0#egg=SMEFT19