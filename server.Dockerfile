FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN groupadd --gid 2000 exet \
  && useradd --uid 2000 --gid exet --shell /bin/bash --create-home exet
RUN mkdir /server
RUN chown exet /server
USER exet
COPY cracked_server.py /server
CMD python3 /server/cracked_server.py
