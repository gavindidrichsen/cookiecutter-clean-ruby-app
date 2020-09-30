#!/bin/bash

set -x
pwd
if ! grep -qe '^gemspec' Gemfile; then
	cat <<-EOF >> Gemfile
		
		# load {{cookiecutter.gem_name}}.gemspec
		gemspec
		EOF
fi
set +x

# bundle install
# git init .
# git add .
# git commit -m "Initial commit"
# git remote add origin git@github.com:{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}.git
# git push origin master
# exit 0
