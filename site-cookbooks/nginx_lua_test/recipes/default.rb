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

