
SHELL = bash
.SHELLFLAGS = -ec

LATEST_IBAZEL_VERSION ?= v0.15.10
LATEST_BAZELISK_VERSION ?= v1.10.1
LATEST_SKAFFOLD_VERSION ?= latest
LATEST_HELM_VERSION ?= v3.6.3
LATEST_BAZELTOOLS_VERSION ?= 4.0.1

#
# Checks for required tooling.
#

include tools/Tools.mak
include tools/config/app.bzl

ENV ?= $(PWD)/.dev
CP ?= $(shell which cp)
MV ?= $(shell which mv)
RM ?= $(shell which rm)
LN ?= $(shell which ln)
GIT ?= $(shell which git)
CAT ?= $(shell which cat)
TAR ?= $(shell which tar)
ZIP ?= $(shell which zip)
AWK ?= $(shell which awk)
SED ?= $(shell which sed)
YES ?= $(shell which yes)
SORT ?= $(shell which sort)
BASH ?= $(shell which bash)
CURL ?= $(shell which curl)
GREP ?= $(shell which grep)
MKDIR ?= $(shell which mkdir)
UNZIP ?= $(shell which unzip)
CHMOD ?= $(shell which chmod)
GENHTML ?= $(shell which genhtml)

IBAZEL ?= $(ENV)/bin/ibazel
BAZELISK ?= $(ENV)/bin/bazelisk
BUILDOZER ?= $(ENV)/bin/buildozer
BUILDIFIER ?= $(ENV)/bin/buildifier
UNUSED_DEPS ?= $(ENV)/bin/unused_deps
HELM ?= $(ENV)/bin/helm


## Language Extensions: Tooling

ifeq ($(ENABLE_NODE),yes)
NPX ?= $(shell which npx)
NODE ?= $(shell which node)
YARN ?= $(shell which yarn)
endif

ifeq ($(ENABLE_JAVA),yes)
JAVA ?= $(shell which java)
endif

ifeq ($(ENABLE_PYTHON),yes)
PYTHON ?= $(ENV)/python/bin/python3
VIRTUALENV ?= $(shell which virtualenv)

ifeq ($(ENABLE_GCLOUD),yes)
GCLOUD ?= $(shell which gcloud)
GSUTIL ?= $(shell which gsutil)
endif

ifeq ($(ENABLE_K8S),yes)
KUBECTL ?= $(shell which kubectl)
NOMOS ?= $(shell which nomos)
KUSTOMIZE ?= $(shell which kustomize)
KPT ?= $(shell which kpt)
endif

ifeq ($(ENABLE_HELM),yes)
HELM ?= $(shell which helm)
endif
else
ifeq ($(ENABLE_GCLOUD),yes)
$(error Google Cloud SDK requires Python. Please enable Python or disable gcloud)
endif
ifeq ($(ENABLE_K8S),yes)
$(error Kubernetes requires Python. Please enable Python or disable K8S)
endif
ifeq ($(ENABLE_HELM),yes)
$(error Helm requires Python. Please enable Python or disable Helm)
endif
endif


ifeq ($(RM),)
$(error Could not resolve `rm`. Please check your environment)
endif
ifeq ($(CP),)
$(error Could not resolve `cp`. Please check your environment)
endif
ifeq ($(YES),)
$(error Could not resolve `yes`. Please check your environment)
endif
ifeq ($(LN),)
$(error Could not resolve `ln`. Please check your environment)
endif
ifeq ($(GIT),)
ifeq ($(PLATFORM),darwin)
$(error Could not resolve `git`. Please install Xcode tools (`sudo xcode-select --install`))
else
$(error Could not resolve `git`. Please check your environment)
endif
endif
ifeq ($(TAR),)
$(error Could not resolve `tar`. Please check your environment)
endif
ifeq ($(GREP),)
$(error Could not resolve `grep`. Please check your environment)
endif
ifeq ($(CURL),)
$(error Could not resolve `curl`. Please check your environment)
endif
ifeq ($(BASH),)
$(error Could not resolve `bash`. Something is terribly wrong)
endif
ifeq ($(MKDIR),)
$(error Could not resolve `mkdir`. Please check your environment)
endif
ifeq ($(CHMOD),)
$(error Could not resolve `chmod`. Please check your environment)
endif
ifeq ($(GENHTML),)
$(error Could not resolve `genhtml`. Please install lcov for your system (on Mac, you can get it with 'brew install lcov'))
endif
ifeq ($(UNZIP),)
$(error Could not resolve `unzip`.)
endif
ifeq ($(ZIP),)
$(error Could not resolve `zip`.)
endif


## Language Extensions: Checks

ifeq ($(ENABLE_NODE),yes)
ifeq ($(NODE),)
$(error Could not resolve `node`. Please install NodeJS via: https://nodejs.org/en/download/)
endif
ifeq ($(YARN),)
$(error Could not resolve `yarn`. Please install Yarn via: https://classic.yarnpkg.com/en/docs/install)
endif
ifeq ($(NPX),)
$(error Could not resolve `npx`. Please install Node JS and NPX on your system)
endif
endif

ifeq ($(ENABLE_JAVA),yes)
ifeq ($(JAVA),)
$(error Could not resolve `java`. Please install a JDK (ideally Zulu, which you can find here: https://go.cookies.co/jdk))
endif
ifeq ($(shell java -version > /dev/null 2> /dev/null ; echo $$?),1)
$(error Could not resolve `java`. Please install a JDK (ideally Zulu, which you can find here: https://go.cookies.co/jdk))
endif
endif

ifeq ($(ENABLE_PYTHON),yes)
ifeq ($(PYTHON),)
$(error Could not resolve `python3`. PLease check your environment)
endif
ifeq ($(VIRTUALENV),)
$(error Could not resolve `virtualenv`. Please run: `pip3 install virtualenv`)
endif
endif

ifeq ($(ENABLE_GCLOUD),yes)
ifeq ($(GCLOUD),)
$(error Could not resolve `gcloud`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install)
endif
ifeq ($(GSUTIL),)
$(error Could not resolve `gsutil`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install)
endif
endif

ifeq ($(ENABLE_K8S),yes)
ifeq ($(KUBECTL),)
$(error Could not resolve `kubectl`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install, and then run 'gcloud components install kubectl')
endif
ifeq ($(KUSTOMIZE),)
$(error Could not resolve `kustomize`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install, 'gcloud components install kustomize')
endif
ifeq ($(KPT),)
$(error Could not resolve `kpt`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install, and then run 'gcloud components install kpt')
endif
ifeq ($(NOMOS),)
$(error Could not resolve `nomos`. Please install the Google Cloud SDK via these instructions: https://cloud.google.com/sdk/install, and then run 'gcloud components install nomos')
endif

ifeq ($(ENABLE_HELM),yes)
ifeq ($(HELM),)
$(error Could not resolve `helm`. Please follow the instructions at: https://helm.sh/docs/intro/install/)
endif
endif
endif


# OS hinting
ifeq ($(OS),Windows_NT)
PLATFORM ?= windows
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        PLATFORM ?= linux
    endif
    ifeq ($(UNAME_S),Darwin)
        PLATFORM ?= darwin
    endif
    UNAME_P := $(shell uname -p)
    ifeq ($(UNAME_P),x86_64)
        ARCH ?= x86
		ARCHNAME ?= amd64
    endif
    ifneq ($(filter arm%,$(UNAME_P)),)
        ARCH ?= ARM
		ARCHNAME ?= arm64
    endif
endif

# arch hinting
ifneq ($(shell uname -p),x86_64)
$(error This codebase is not yet supported on non-x86_64 systems)
endif

## Install Githooks.
$(GITHOOKS):
	$(info Installing githooks...)
	$(RULE)$(MKDIR) -p .git/hooks
	$(RULE)$(CP) -f $(POSIX_FLAGS) .hooks/* .git/hooks/
	$(RULE)$(CHMOD) +x .git/hooks/*

ifeq ($(ENABLE_MAVEN),yes)
update-java:
	$(info Updating Java deps...)
	$(RULE)$(BAZEL) $(BAZEL_ARGS) run @unpinned_maven//:pin
endif

## Setup dev environment.
ifeq ($(ENABLE_NODE),yes)
$(ENV): $(GITHOOKS) $(NODE_MODULES)
else
$(ENV): $(GITHOOKS)
endif
	$(info Creating build environment...)
	$(RULE)$(MKDIR) -p $(ENV)/bazel $(ENV)/python $(ENV)/bin
	$(RULE)echo "#!/bin/bash" >> $(ENV)/activate
	$(RULE)echo "PATH=$$PATH:$(ENV)/bazel:$(ENV)/python/bin:$(ENV)/bin" >> $(ENV)/activate
ifeq ($(ENABLE_BAZEL),yes)
	@echo "Downloading Bazelisk..."
	$(RULE)$(CURL) $(CURLFLAGS) -qL https://github.com/bazelbuild/bazelisk/releases/download/$(BAZELISK_VERSION)/bazelisk-$(PLATFORM)-$(ARCHNAME) > $(ENV)/bazel/bazelisk-$(PLATFORM)
	@echo "Downloading iBazel..."
	$(RULE)$(CURL) $(CURLFLAGS) -qL https://github.com/bazelbuild/bazel-watcher/releases/download/$(IBAZEL_VERSION)/ibazel_$(PLATFORM)_$(ARCHNAME) > $(ENV)/bazel/ibazel-$(PLATFORM)
	$(RULE)$(LN) -s $(ENV)/bazel/bazelisk-$(PLATFORM) $(ENV)/bin/bazelisk
	$(RULE)$(LN) -s $(ENV)/bazel/ibazel-$(PLATFORM) $(ENV)/bin/ibazel
	$(RULE)$(CHMOD) +x $(ENV)/bazel/bazelisk-$(PLATFORM) $(ENV)/bin/bazelisk $(ENV)/bazel/ibazel-$(PLATFORM) $(ENV)/bin/ibazel
	$(RULE)$(ENV)/bin/bazelisk version
	@echo "Downloading Buildifier..."
	$(RULE)$(CURL) $(CURLFLAGS) -qL https://github.com/bazelbuild/buildtools/releases/download/$(BAZELTOOLS_VERSION)/buildifier-$(PLATFORM)-$(ARCHNAME) > $(ENV)/bazel/buildifier-$(PLATFORM)
	$(RULE)$(LN) -s $(ENV)/bazel/buildifier-$(PLATFORM) $(ENV)/bin/buildifier
	$(RULE)$(CHMOD) +x $(ENV)/bazel/buildifier-$(PLATFORM)
	@echo "Downloading Buildozer..."
	$(RULE)$(CURL) $(CURLFLAGS) -qL https://github.com/bazelbuild/buildtools/releases/download/$(BAZELTOOLS_VERSION)/buildozer-$(PLATFORM)-$(ARCHNAME) > $(ENV)/bazel/buildozer-$(PLATFORM)
	$(RULE)$(LN) -s $(ENV)/bazel/buildozer-$(PLATFORM) $(ENV)/bin/buildozer
	$(RULE)$(CHMOD) +x $(ENV)/bazel/buildozer-$(PLATFORM)
	@echo "Downloading unused_deps..."
	$(RULE)$(CURL) $(CURLFLAGS) -qL https://github.com/bazelbuild/buildtools/releases/download/$(BAZELTOOLS_VERSION)/unused_deps-$(PLATFORM)-$(ARCHNAME) > $(ENV)/bazel/unused_deps-$(PLATFORM)
	$(RULE)$(LN) -s $(ENV)/bazel/unused_deps-$(PLATFORM) $(ENV)/bin/unused_deps
	$(RULE)$(CHMOD) +x $(ENV)/bazel/unused_deps-$(PLATFORM)
endif
ifeq ($(ENABLE_SKAFFOLD),yes)
	@echo "Downloading Skaffold..."
	$(RULE)$(CURL) $(CURLFLAGS) -Lo $(ENV)/bin/skaffold https://storage.googleapis.com/skaffold/releases/$(SKAFFOLD_VERSION)/skaffold-$(PLATFORM)-$(ARCHNAME)
	$(RULE)$(CHMOD) +x $(ENV)/bin/skaffold
endif
ifeq ($(ENABLE_SKAFFOLD),yes)
	@echo "Downloading Helm..."
	$(RULE)$(CURL) $(CURLFLAGS) -Lo $(ENV)/bin/helm https://get.helm.sh/helm-$(HELM_VERSION)-$(PLATFORM)-$(ARCHNAME).tar.gz
	$(RULE)$(CHMOD) +x $(ENV)/bin/helm
endif
ifeq ($(ENABLE_PYTHON),yes)
ifeq ($(ENABLE_GCLOUD),yes)
ifeq ($(CI),no)
	@echo "Authenticating with Google..."
	$(RULE)$(GCLOUD) auth login --update-adc
	$(RULE)echo "GOOGLE_APPLICATION_CREDENTIALS=$${GOOGLE_APPLICATION_CREDENTIALS:-~/.config/gcloud/application_default_credentials.json}" >> $(ENV)/activate
endif
endif
	@echo "Creating virtualenv..."
	$(RULE)$(VIRTUALENV) $(ENV)/python --python=$(shell which python3)
	$(RULE)$(LN) -s $(ENV)/python/bin/python3 $(ENV)/bin/python
	@echo "Upgrading local pip..."
	$(RULE)$(ENV)/python/bin/pip install --upgrade pip
	@echo "Installing Python dependencies..."
	$(RULE)$(ENV)/python/bin/pip install -r <(cat requirements.txt dev-requirements.txt)
	$(RULE)echo "source $(ENV)/python/bin/activate" >> $(ENV)/activate
endif
ifeq ($(ENABLE_GRCOV),yes)
	@echo "Installing gcov..."
ifeq ($(PLATFORM),darwin)
	$(RULE)cd $(ENV)/bin && $(CURL) $(CURLFLAGS) -qL https://github.com/mozilla/grcov/releases/download/v0.7.1/grcov-osx-x86_64.tar.bz2 | tar jxf -
else
	$(RULE)cd $(ENV)/bin && $(CURL) $(CURLFLAGS) -qL https://github.com/mozilla/grcov/releases/download/v0.7.1/grcov-linux-x86_64.tar.bz2 | tar jxf -
endif
	@chmod +x $(ENV)/bin/grcov
endif
ifeq ($(ENABLE_DOCKER),yes)
	@echo "Preparing Docker integration..."
	$(RULE)$(YES) y | $(GCLOUD) auth configure-docker $(DOCKER_REGISTRY)
endif
	$(RULE)#finally: setup shell alias and tell the developer about it
	$(RULE)echo "🎉 Codebase setup complete. Activate the environment with 'source .env/activate'."


ifeq ($(ENABLE_NODE),yes)
NODE_MODULES ?= node_modules/

## Install Node modules.
$(NODE_MODULES):
	$(info Installing Node modules...)
	$(RULE)$(YARN)
endif

## Handle CI.
ifeq ($(CI),yes)
CONFIG += --config=ci
endif

## Handle verbose flag.
ifeq ($(QUIET),no)
ifeq ($(VERBOSE),yes)
# verbose mode
CONFIG += --config=verbose
RULE ?=
POSIX_FLAGS ?= -v
CURLFLAGS ?= -v --progress-bar
else
# normal mode
RULE ?= @
POSIX_FLAGS ?=
CURLFLAGS ?= --progress-bar
endif
else
# quiet mode
RULE ?= @
POSIX_FLAGS ?=
CURLFLAGS ?= -q
endif

## Handle debug flag.
ifeq ($(DEBUG),yes)
CONFIG += --config=debug
endif

## Handle colors.
ifeq ($(COLORS),yes)
BLUE ?= \033[36m
NC ?= \033[0m
else
BLUE ?=
NC ?=
endif

## Handle coverage.
ifeq ($(COVERAGE),yes)
TEST_CMD ?= coverage
else
TEST_CMD ?= test
endif

show-features:
ifeq ($(QUIET),no)
	$(info -- Active features:)
	@echo "Languages:"
endif
	@echo "ENABLE_NODE $(ENABLE_NODE)"
	@echo "ENABLE_JAVA $(ENABLE_JAVA)"
	@echo "ENABLE_PYTHON $(ENABLE_PYTHON)"
ifeq ($(QUIET),no)
	@echo ""
	@echo "Tooling:"
endif
	@echo "ENABLE_BAZEL $(ENABLE_BAZEL)"
	@echo "ENABLE_GCLOUD $(ENABLE_GCLOUD)"
	@echo "ENABLE_DOCKER $(ENABLE_DOCKER)"
	@echo "ENABLE_SKAFFOLD $(ENABLE_SKAFFOLD)"
ifeq ($(QUIET),no)
	@echo ""
	@echo "Deployment:"
endif
	@echo "ENABLE_K8S $(ENABLE_K8S)"
	@echo "ENABLE_HELM $(ENABLE_HELM)"
ifeq ($(QUIET),no)
	@echo ""
endif

show-versions:
ifeq ($(QUIET),no)
	$(info -- Pinned versions:)
	@echo "Versions:"
endif
	@echo "IBAZEL_VERSION $(IBAZEL_VERSION)"
	@echo "BAZELISK_VERSION $(BAZELISK_VERSION)"
	@echo "SKAFFOLD_VERSION $(SKAFFOLD_VERSION)"
	@echo "HELM_VERSION $(HELM_VERSION)"
	@echo "BAZEL_VERSION $(BAZEL_VERSION)"
	@echo "NODE_VERSION $(NODE_VERSION)"
	@echo "YARN_VERSION $(YARN_VERSION)"
	@echo "GO_VERSION $(GO_VERSION)"
ifeq ($(QUIET),no)
	@echo ""
endif

show-image:
ifeq ($(QUIET),no)
	@echo ""
	$(info -- Docker image:)
endif
	@echo "DOCKER_REGISTRY $(DOCKER_REGISTRY)"
	@echo "DOCKER_REPOSITORY $(DOCKER_REPOSITORY)"
ifeq ($(QUIET),no)
	@echo ""
endif