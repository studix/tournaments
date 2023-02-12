FROM ruby:3.1.3
WORKDIR /usr/src/app 
COPY Gemfile Gemfile.lock ./ 
ADD . /usr/src/app/ 

# ssh
ENV SSH_PASSWD "root:Docker!"
RUN apt-get update \
        && apt-get install -y --no-install-recommends dialog \
        && apt-get update \
 && apt-get install -y --no-install-recommends openssh-server \
 && echo "$SSH_PASSWD" | chpasswd 

RUN apt-get install -y --no-install-recommends nodejs

COPY sshd_config /etc/ssh/
COPY init.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/init.sh

RUN bundle install 
EXPOSE 3000 2222
ENTRYPOINT ["init.sh"]