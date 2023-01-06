FROM ubuntu
RUN apt update && apt-get install python3 -y 
RUN apt-get install python3-pip -y
RUN pip install flask flask-mysql

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

