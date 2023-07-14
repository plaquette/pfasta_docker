FROM debian:buster-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/kloetzl/pfasta.git

WORKDIR /app/pfasta

RUN make \
    && make install \
    && rm -rf /app/pfasta

CMD ["/bin/bash"]
