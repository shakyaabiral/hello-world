#!/usr/bin/env bash
# get the new release version
release_version=`bumpversion --dry-run --list release | grep new_version | sed -r s,"^.*=",,`
# start new git flow release or if already started checkout the branch
if [ `git rev-parse --quiet --verify release/${release_version}` ]
then
    git checkout release/${release_version}
else
    git flow release start ${release_version}
fi
git flow release publish ${release_version}
# can't start new dev version on develop branch, since we can't merge release with dev later
# bumpversion dev