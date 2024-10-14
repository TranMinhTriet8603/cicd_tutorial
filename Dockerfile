FROM ubuntu:latest
MAINTAINER Minh Triet "trietb2112017@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3.12-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3.12 -m venv venv && ./venv/bin/python -m pip install --upgrade pip 
RUN ./venv/bin/pip install -r requirements.txt
ENTRYPOINT ["./venv/bin/python"]
CMD ["flask_docker.py"]
