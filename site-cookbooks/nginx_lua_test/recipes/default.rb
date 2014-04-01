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

bash "install_nginx_lua_test" do
    user "root"
    cwd "/usr/local/src/"
    code <<-EOH
    git clone https://github.com/roadman/nginx_lua_test.git
    cd nginx_lua_test
    ./tools/buildsh
    EOH
end
