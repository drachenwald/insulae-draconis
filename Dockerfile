FROM ruby:2.6
VOLUME ["/build"]
WORKDIR /build
EXPOSE 4000
RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    localedef -i en_US -f UTF-8 en_US.UTF-8
ENV LC_ALL="C.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
CMD bundle install && bundle exec jekyll serve --watch --host 0.0.0.0