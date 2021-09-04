
#
# Tooling: Python SDK
#

ENABLE_GRCOV = yes
ENABLE_PYTHON = yes
ENABLE_GCLOUD = yes
ENABLE_DOCKER = yes
ENABLE_BAZEL = yes


# -- Tool Versions: Overrides --

BAZEL_VERSION ?= $(shell cat .bazelversion)
BAZELTOOLS_VERSION ?= $(LATEST_BAZELTOOLS_VERSION)
IBAZEL_VERSION ?= $(LATEST_IBAZEL_VERSION)
BAZELISK_VERSION ?= $(LATEST_BAZELISK_VERSION)

include tools/config/app.bzl
