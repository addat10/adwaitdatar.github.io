#!/usr/bin/env bash
set -eu
# Optional workspace-local Ruby gems, used by the initial Windows/WSL setup.
if [ -d /tmp/adwait-academicpages-tools ]; then
  export GEM_HOME=/tmp/adwait-academicpages-tools
  export PATH="$GEM_HOME/bin:$PATH"
elif [ -d .preview/gems ]; then
  export GEM_HOME="$PWD/.preview/gems"
  export PATH="$GEM_HOME/bin:$PATH"
fi
bundle exec jekyll serve --config _config.yml,_config.local.yml --host 127.0.0.1 --port 4000 --force_polling
