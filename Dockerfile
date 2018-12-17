FROM swift:latest

RUN /bin/bash -c "$(curl -sL https://apt.vapor.sh)"
RUN apt-get update && apt-get -y install \
    tzdata wget vapor \
    && rm -r /var/lib/apt/lists/*

EXPOSE 8080

ENTRYPOINT [ "./.build/x86_64-unknown-linux/debug/Run serve -b 0.0.0.0" ]