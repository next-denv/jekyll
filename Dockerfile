FROM jekyll/jekyll:4.1.0

RUN apk add openssh && ssh-keygen -A

VOLUME [ "/srv/jekyll", "/root/.ssh" ]

WORKDIR /src/jekyll

EXPOSE 22

CMD [ "/usr/sbin/sshd", "-D" ]