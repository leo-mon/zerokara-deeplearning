FROM continuumio/anaconda3:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install graphviz -y
RUN apt-get install git

RUN pip install --upgrade pip
RUN pip install tensorflow
RUN pip install graphviz 
# Another installations comes here.

RUN mkdir /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
