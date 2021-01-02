#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2021 Nick Baynham, All Rights Reserved.
#

package 'apache2' do
       action :install
end       

file '/var/www/html/index.html' do
	content "<h1>Hello, World!</h1>
	<h2>IPADDRESS: #{node['ipaddress']}</h2>
	<h2>HOSTNAME: #{node['hostname']}</h2>
	"
end

service 'apache2' do
        action [ :enable, :start ]
end
