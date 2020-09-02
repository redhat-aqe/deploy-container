FROM quay.io/redhat-aqe/ansible-tools:latest

LABEL maintainer="PnT DevOps Automation - Red Hat, Inc." \
      vendor="PnT DevOps Automation - Red Hat, Inc." \
      summary="Image containing various ansible tools and additionally the oc tool" \
      distribution-scope="public"

RUN dnf install -y --setopt=tsflags=nodocs origin-clients && dnf clean all
