#
# Cookbook Name:: nginx_test
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{git lua-devel pcre-devel valgrind curl}.each do |pkg|
    package pkg do
        action :install
    end
end

git "/usr/local/src/nginx_lua_test" do
    repository "https://github.com/roadman/nginx_lua_test.git"
    revision "master"
    action :sync
end

bash "install_nginx_lua_test" do
    user "root"
    cwd "/usr/local/src/nginx_lua_test"
    code <<-EOH
    ./tools/buildsh
    EOH
end

template "/usr/local/ngx_http_test_lua/conf/nginx.conf" do
    mode 0644
    source "nginx.conf.erb"
end

