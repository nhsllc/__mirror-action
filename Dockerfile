FROM alpine/git:latest

RUN apk --no-cache add bash

LABEL "com.github.actions.name"="Mirror Repository"
LABEL "com.github.actions.description"="Automate mirroring of git commits and pulls from GitHub to GitLab"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/nhsllc/mirror-action"
LABEL "homepage"="https://github.com/nhsllc/mirror-action"
LABEL "maintainer"="Benjamin L. Miles <bmiles@nethealthshops.com>"


COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]
