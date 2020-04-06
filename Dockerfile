FROM alpine:edge
RUN apk add mongodb==3.6.17
#RUN apk add --no-cache mongodb

VOLUME /data/db
EXPOSE 27017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
