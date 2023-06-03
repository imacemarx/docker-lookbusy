FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget tar gcc make && \
    rm -rf /var/lib/apt/lists/*

RUN wget http://www.devin.com/lookbusy/download/lookbusy-1.4.tar.gz && \
    tar -xzf lookbusy-1.4.tar.gz && \
    cd lookbusy-1.4 && \
    chmod a+x configure &&\
    ./configure &&\
    make && \
    make install && \
    cd .. && \
    rm -rf lookbusy-1.4 && \
    rm lookbusy-1.4.tar.gz

COPY do.sh /workdir/do.sh

WORKDIR /workdir

RUN chmod +x do.sh

CMD ["./do.sh"]