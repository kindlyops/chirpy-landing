#!/bin/bash

HUGO_VERSION=0.57.2
HUGO_DOWNLOAD=hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

set -x
set -e

# Install Hugo if not already cached or upgrade an old version.
if [ ! -e hugo ] || ! [[ $(hugo version) =~ v${HUGO_VERSION} ]]; then
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_DOWNLOAD}
  tar xvzf ${HUGO_DOWNLOAD}
fi
