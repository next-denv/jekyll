FROM ruby:2.7.1

RUN gem install jekyll bundler && \
    apt update && apt upgrade -y &&  \
    apt install -y openssh-server && \
    mkdir -p /run/sshd /code

VOLUME [ "/code", "/root/.ssh" ]

WORKDIR /code

EXPOSE 22

CMD [ "/usr/sbin/sshd", "-D" ]