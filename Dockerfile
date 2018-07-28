FROM ubuntu:16.04
LABEL maintainer="Anshuman Bhartiya"

RUN apt-get update

RUN apt-get install -y libldns-dev git build-essential wget python3 python python-setuptools python-dev
RUN easy_install pip

WORKDIR /masss3buckettester
ADD requirements.txt s3_poc.py /masss3buckettester/
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "s3_poc.py"]
