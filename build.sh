#!/usr/bin/env bash
git flow init -d
new_version=`bumpversion --dry-run --list minor | grep new_version | sed -r s,"^.*=",,`
git flow feature release ${new_version}
echo 'run build job'
bumpversion dev