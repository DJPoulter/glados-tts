FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install python3-pip espeak-ng -y --no-install-recommends

WORKDIR /glados

COPY requirements.txt /glados

RUN pip3 install -r requirements.txt

COPY . /glados

ENTRYPOINT ["python3"]
CMD ["engine.py"]