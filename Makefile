# Makefile for call-make action

# Setup roots
WORKSPACE_ROOT := $(CURDIR)/../../..
PROJECT_ROOT := $(CURDIR)

# Setup docker image name
DOCKER_IMAGE_NAME := dynod/call-make-action

# Main makefile suite - defs
include $(WORKSPACE_ROOT)/.workspace/main.mk

# Default target is to build docker image
default: docker-image

# Main makefile suite - rules
include $(WORKSPACE_ROOT)/.workspace/rules.mk
