FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y tini python3 python3-pip git && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

RUN pip3 install cruft

WORKDIR /data

ENTRYPOINT ["tini", "--", "cruft"]
CMD ["--help"]