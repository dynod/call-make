# Makefile for call-make action

# Setup roots
WORKSPACE_ROOT := $(CURDIR)/../../..
PROJECT_ROOT := $(CURDIR)

# Main makefile suite - defs
include $(WORKSPACE_ROOT)/.workspace/main.mk

# Default target is stubbed
default: stub

# Main makefile suite - rules
include $(WORKSPACE_ROOT)/.workspace/rules.mk
