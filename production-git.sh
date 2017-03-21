#!/usr/bin/env bash
# get the new release version
export GIT_MERGE_AUTOEDIT=no
release_version=`bumpversion --dry-run --list release | grep new_version | sed -r s,"^.*=",,`
git checkout -b release/${release_version}
bumpversion release
git push origin release/${release_version}
git checkout master
git merge --no-ff --log -m "Releasing version ${release_version}" release/${release_version}
git push origin master
git tag -a -m "v${release_version}" ${release_version}
git push --tags
git checkout develop
git merge --no-ff --log release/${release_version}
git push origin develop
# git branch -d release/${release_version}
bumpversion patch
git push origin develop

# export GIT_MERGE_AUTOEDIT=no
# release_version=`bumpversion --dry-run --list release | grep new_version | sed -r s,"^.*=",,`
# git flow release start ${release_version}
# bumpversion release
# build script
# git flow release finish ${release_version}
# git push origin master
# bumpversion patch
# git push origin develop
# export GIT_MERGE_AUTOEDIT=yes