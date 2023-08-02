FROM registry.fedoraproject.org/fedora:38 AS builder

RUN dnf install -y gcc

RUN mkdir -p /opt/myapp

COPY . /opt/myapp

RUN gcc /opt/myapp/src/myapp.c -o /usr/local/bin/myapp

FROM registry.fedoraproject.org/fedora:38

COPY --from=builder /usr/local/bin/myapp /usr/local/bin/myapp

ENTRYPOINT [ "/usr/local/bin/myapp" ]
