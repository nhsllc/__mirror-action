FROM alpine/git:latest

RUN apk --no-cache add bash

LABEL "com.github.actions.name"="Mirror Repository"
LABEL "com.github.actions.description"="Automate mirroring of git commits to another remote repository, like GitLab or Bitbucket"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/nhsllc/mirror-action"
LABEL "homepage"="https://github.com/nhsllc/mirror-action"
LABEL "maintainer"="Benjamin Lloyd Miles <bmiles@nethealthshops.com>"


COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]