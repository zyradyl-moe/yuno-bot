################################################################################
#
# Name:     zyradyl/yuno-bot
# Version:  0.0.1
# License:  GPL
# Sources:  github:zyradyl-moe/yuno-bot
#
# Notes:    The main script will automatically download the newest version
#           and run it, so we don't have to update the docker container.
################################################################################
FROM alpine:latest

RUN apk add --update --no-cache bash git python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools pipx
RUN pipx install poetry

COPY run.sh .

CMD [ "bash", "run.sh" ]%