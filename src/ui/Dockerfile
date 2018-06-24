FROM alpine:latest
ENV APP_HOME /app

RUN apk --no-cache add --virtual \
    build_deps build-base libc-dev ruby ruby-dev  ruby-irb ruby-rake ruby-io-console ruby-bigdecimal ruby-json ruby-bundler \
    libstdc++ tzdata bash \
    &&  echo 'gem: --no-document' > /etc/gemrc && mkdir $APP_HOME

WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292

CMD ["puma"]
