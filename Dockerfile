FROM alpine:latest
RUN apk add --no-cache bash python3 sl
RUN rm /usr/bin/tree /usr/bin/find
RUN adduser -D -h /home/challenge user

WORKDIR /home/challenge
COPY src .
RUN chown -R user:user /home/challenge && \
    chmod 555 /home/challenge/a-初始位置/b-大廳/e-大螢幕房-已上鎖/button* && \
    chmod 555 /home/challenge/a-初始位置/b-大廳/e-大螢幕房-已上鎖/reset 



USER user
CMD ["/bin/bash"]

