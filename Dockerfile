FROM docker:18.06.3
MAINTAINER David Chidell (dchidell@cisco.com)

RUN apk --no-cache add py-pip sudo gcc python-dev musl-dev && \
    pip install docker-compose

ADD . /compose/service-stack/
ENTRYPOINT ["docker-compose","-f","/compose/service-stack/service-stack.yml","up","-d"]
