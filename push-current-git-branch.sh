#!/bin/bash

# this is an executable script in ~/bin/ that can be used as a git alias
# to automatically push the current branch (e.g. alias = 'git pc')

set -e

if ! [ "$(git rev-parse --abbrev-ref HEAD)" = "master" ];
  then git push origin HEAD
else
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo "script to auto-push current branch is disabled for master branch"
  echo ""
  echo "please run 'git push' manually if pushing master is necessary."
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  exit 1
fi
