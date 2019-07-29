FROM swift:latest

RUN apt-get update && apt-get -y install \
    tzdata wget

RUN /bin/bash -c "$(wget -qO- https://apt.vapor.sh)"

RUN apt-get update && apt-get -y install vapor \
    && rm -r /var/lib/apt/lists/*

EXPOSE 8080

ENTRYPOINT [ "./.build/x86_64-unknown-linux/debug/Run serve -b 0.0.0.0" ]