#!/usr/bin/env bash

version="0.1.0"
src="https://github.com/gardar/ansible-test-molecule/releases/download/$version/ansible-test-molecule.sh"

if [[ -v GITHUB_TOKEN ]]
then
	source <(curl -s -H "Authorization: token $GITHUB_TOKEN" $src)
else
	source <(curl -s $src)
fi
