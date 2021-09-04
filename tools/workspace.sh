#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

git_commit="$(git describe --tags --always --dirty)"
git_commit_clean="$(git describe --tags --always)"
build_date="$(date -u '+%Y%m%d')"
docker_tag="v${build_date}-${git_commit}"
stable_docker_tag="v${build_date}-${git_commit_clean}"
cat <<EOF
STABLE_DOCKER_REPO ${DOCKER_REPO_OVERRIDE:-us.gcr.io/cookies-co}
STABLE_BUILD_GIT_COMMIT ${git_commit}
STABLE_DOCKER_TAG ${stable_docker_tag}
DOCKER_TAG ${docker_tag}
VERSION $1
BASE $2
EOF
