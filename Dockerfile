# Dockerfile action for call-make
FROM dynod/devenv:1.0.0

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
