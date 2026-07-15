FROM lcr.loongnix.cn/library/rust:1.97.0-forky-slim

RUN apt update \
    && apt-get install -y --no-install-recommends \
    git \
    ca-certificates

CMD ["/bin/bash"]
