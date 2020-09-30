#!/bin/bash

if [[ -z "${COOKIE}" ]]; then
  echo "Must set the COOKIE environment variable to be the root directory in which cookiecutter-habitat lives"
  exit 1
fi

(
  # ensure the _core project is already present
  cd ..
  cookiecutter ${COOKIE}/cookiecutter-clean-ruby-app/_core -f --no-input \
    gem_name='{{ cookiecutter.gem_name }}' \
    module_name='{{ cookiecutter.module_name }}' \
    version='{{ cookiecutter.version }}' \
    github_user='{{ cookiecutter.github_user }}' \
    repo_name='{{ cookiecutter.repo_name }}' \
    app_title='{{ cookiecutter.app_title }}' \
    short_description='{{ cookiecutter.short_description }}' \
    summary='{{ cookiecutter.summary }}' \
    author_name='{{ cookiecutter.author_name }}' \
    author_email='{{ cookiecutter.author_email }}'
)
