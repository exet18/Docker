FROM ubuntu

RUN apt-get update
RUN apt-get install -y libqt5network5 libqt5sql5-psql
RUN mkdir /server
COPY chatServer /server
CMD /server/chatServer


