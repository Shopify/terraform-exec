#!/bin/bash

if ! git remote | grep -q "upstream"; then
  git remote add upstream git remote add upstream https://github.com/hashicorp/terraform-exec.git
fi

git fetch upstream
git rebase upstream/main
git push -f
