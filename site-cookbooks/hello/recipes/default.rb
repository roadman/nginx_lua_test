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
