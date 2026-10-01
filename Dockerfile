FROM redhat/ubi10

RUN dnf install -y python pip

WORKDIR /projeto

COPY app.py /projeto/app.py
COPY requirements.txt /projeto/requirements.txt

RUN pip install -r /projeto/requirements.txt

CMD python app.py