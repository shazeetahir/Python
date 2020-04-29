FROM ubuntu:18.04

COPY requirements.txt /workspace/

WORKDIR workspace

RUN apt-get update && apt-get install -y python3.6 python3-pip

RUN pip3 install -r requirements.txt
#RUN pip3 install jupyter seaborn pandas numpy

EXPOSE 8000

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]