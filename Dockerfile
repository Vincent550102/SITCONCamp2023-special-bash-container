FROM alpine:latest
RUN apk add --no-cache bash python3 sl
RUN rm /usr/bin/tree /usr/bin/find
RUN adduser -D -h /home/challenge user

WORKDIR /home/challenge
COPY src .
RUN chown -R user:user /home/challenge

USER user
CMD ["/bin/bash"]

