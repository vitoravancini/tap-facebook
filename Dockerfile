FROM python:3.6

COPY . /opt/app/

WORKDIR /opt/app/

RUN pip install -e .

ENV TAP_CON_DIR='' CATALOG=''

RUN  chmod a+x /opt/app/entrypoint.sh

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]