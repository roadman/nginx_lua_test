#!/bin/sh

bundle install --path=vendor/bundle
git submodule init
git submodule update
vagrant up
vagrant ssh-config nginx_lua_test >> ~/.ssh/config
bundle exec knife solo prepare nginx_lua_test
bundle exec knife solo cook nginx_lua_test

