#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2021 Nick Baynham, All Rights Reserved.
#

package 'apache2' do
       action :install
end       

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

service 'apache2' do
        action [ :enable, :start ]
end
