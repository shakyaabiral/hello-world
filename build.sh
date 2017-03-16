#!/usr/bin/env bash
new_version=`bumpversion --dry-run --list minor | grep new_version | sed -r s,"^.*=",,`
echo ${new_version}
