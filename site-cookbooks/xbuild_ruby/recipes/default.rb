#
# Cookbook Name:: nginx_test
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/vagrant/xbuild" do
    user "vagrant"
    repository "https://github.com/tagomoris/xbuild.git"
    revision "master"
    action :sync
end

bash "install_ruby" do
    user "vagrant"
    cwd "/home/vagrant/"
    code <<-EOH
    xbuild/install ruby 2.0.0-p353 /home/vagrant/local/ruby-2.0
    EOH
end

template "/home/vagrant/.bashrc" do
    mode 0644
    source "bashrc.vagrant.erb"
end
