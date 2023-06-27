FROM alpine:latest
RUN apk add --no-cache bash python3
RUN adduser -D -h /home/challenge user

WORKDIR /home/challenge
COPY src .
RUN chown -R user:user /home/challenge

USER user
CMD ["/bin/bash"]

