#!/bin/sh

vagrant up

vagrant ssh-config nginx_lua_test >> ~/.ssh/config

knife solo prepare nginx_lua_test

knife solo cook nginx_lua_test

