# nginx lua test
***********************

[lua-nginx-module](https://github.com/chaoslawful/lua-nginx-module) test nginx build vagrant.

## setup
***********************
    $ git clone https://github.com/roadman/nginx_lua_test.git
    $ cd nginx_lua_test
    $ bundle install --path=vendor/bundle
    $ git submodule init
    $ git submodule update
    $ vagrant up
    $ vagrant ssh-config nginx_lua_test >> ~/.ssh/config
    $ bundle exec knife solo prepare nginx_lua_test
    $ bundle exec knife solo cook nginx_lua_test

or

    $ git clone https://github.com/roadman/nginx_lua_test.git
    $ cd nginx_lua_test
    $ ./setup.sh

## test
***********************
### nginx start
    host$ ssh nginx_lua_test
    vagrant$ /vagrant/tools/nginx_run

### test request (ngx.encode_hex/ngx.decode_hex)
    host$ ./tools/check_request

## used
***********************
* nginx
* lua-nginx-module
* vagrant (1.5.0 later)
* ruby (2.0 later)