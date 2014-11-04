#!/bin/bash -ex

cd app

export GEM_HOME="${PWD}/.gem"
export GEM_PATH="$GEM_HOME:$GEM_PATH"

rm -rf "${GEM_HOME}"
rm -rf Gemfile.lock
rm -rf vendor
rm -rf .bundle

bundle install

bundle install --deployment
