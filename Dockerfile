# Dockerfile action for call-make
FROM dynod/devenv:latest

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
