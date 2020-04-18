FROM python:slim

WORKDIR /docs
RUN apt-get update \
 && apt-get install -y \
      graphviz \
      imagemagick \
      make \
 && apt-get autoremove \
 && apt-get clean

RUN python3 -m pip install -U pip
RUN python3 -m pip install Sphinx==3.0.1 Pillow

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
