#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{yum vim git}.each do |pkg|
  package pkg do
      action :install
  end
end

service 'iptables' do
    action [:disable, :stop]
end

bash "set_localedef" do
    user "root"
    #cwd "/usr/local/src/nginx_lua_test"
    code <<-EOH
    localedef -f UTF-8 -i ja_JP ja_JP
    EOH
end

bash "set_date_jst" do
    user "root"
    code <<-EOH
    cp  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
    EOH
end
