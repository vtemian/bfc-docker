#!/bin/bash

if [[ ! -z "${GIT_USER}" && ! -z "${GIT_PASSWORD}" ]] ; then
    git config --global user.email ${GIT_EMAIL}
    git config --global user.name $GIT_USER

    cat <<EOF >> ~/.netrc
machine ${GIT_HOST:-github.com}
       login ${GIT_USER}
       password ${GIT_PASSWORD}
EOF
fi
