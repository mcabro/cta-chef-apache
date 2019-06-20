#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package node['apache']['package_name'] do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service node['apache']['package_name'] do
  action [:start, :enable]
end
