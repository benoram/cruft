FROM ubuntu:22.04
LABEL maintainer="Ben Oram <b@oram.co>"

RUN apt-get update && \
    apt-get -s dist-upgrade | grep "^Inst" | grep -i securi | awk -F " " {'print $2'} | xargs apt-get install && \
    apt-get install -y tini python3 python3-pip git && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

RUN pip3 install cruft

WORKDIR /data

ENTRYPOINT ["tini", "--", "cruft"]
CMD ["--help"]