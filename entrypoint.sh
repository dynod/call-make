#!/bin/bash
set -ex

# Get inputs
PROJECT_PATH="$1"
shift
TARGET="$1"
shift
ENVVARS="$1"
shift

# Just make sure we can write in workspace folder; and fix HOME setting
sudo chmod a+w .
export HOME=/home/user

# Prepare some environment
export CI=1
export CI_PROJECT=`basename ${GITHUB_REPOSITORY}`
IS_TAG="$(echo "${GITHUB_REF}" | grep "refs/tags/" || true)"
REPO_HELPER=tools/devenv/helpers/repo.py

# Compute project path if not provided
if test -z "${PROJECT_PATH}" -a -e "${REPO_HELPER}"; then
    if test "${CI_PROJECT}" == "workspace" -a -n "${IS_TAG}"; then
        # Deduce project from tag name
        export CI_PROJECT="$(echo ${GITHUB_REF} | sed -e "s|refs/tags/\(.*\)-.*|\1|")"
    fi

    # Project path will be the detected CI one
    PROJECT_PATH="$(${REPO_HELPER} -r ${PWD}/.repo -p ${CI_PROJECT})"
fi

# Prepare env vars
for VAR in $(echo ${ENVVARS} | sed -e "s|,| |g"); do
    eval "export $VAR"
done

# Call make
make -C "${PROJECT_PATH}" "${TARGET}"
