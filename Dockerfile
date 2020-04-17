FROM sphinxdoc/sphinx:2.4.4

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD requirements.txt .
RUN pip3 install -r requirements.txt

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
