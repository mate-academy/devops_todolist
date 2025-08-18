FROM ubuntu:latest
LABEL authors="Roman"

ENTRYPOINT ["top", "-b"]
