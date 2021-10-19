FROM docker:20.10
LABEL maintainer="David Chidell (dchidell@cisco.com)"

#RUN apk --no-cache add py-pip sudo gcc python-dev musl-dev libffi-dev openssl-dev && \
RUN apk --no-cache add py-pip sudo && \
    pip install docker-compose==1.23.2

ADD . /compose/service-stack/
ENTRYPOINT ["docker-compose","-f","/compose/service-stack/service-stack.yml","up","-d"]
