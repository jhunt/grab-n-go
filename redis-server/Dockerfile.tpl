FROM grab-n-go/base:latest

RUN curl -Lo redis-${REDIS_VERSION}.tar.gz http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz \
 && tar -xzf redis-${REDIS_VERSION}.tar.gz \
 && cd redis-${REDIS_VERSION} \
 && make \
 && mkdir -p /grab-n-go \
 && cp src/redis-server src/redis-cli /grab-n-go \
 && echo "${REDIS_VERSION}" > /grab-n-go/.version

COPY copy /
RUN chmod 0755 /copy

WORKDIR /grab-n-go
CMD ["/copy"]
