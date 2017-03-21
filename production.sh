#!/usr/bin/env bash
# get the new release version
export GIT_MERGE_AUTOEDIT=no
release_version=`bumpversion --dry-run --list release | grep new_version | sed -r s,"^.*=",,`
git flow release start ${release_version}
bumpversion release
### run build script
git flow release finish ${release_version}
git push origin master
bumpversion patch
git push origin develop
export GIT_MERGE_AUTOEDIT=yes