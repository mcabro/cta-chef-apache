#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

members_pool = []

all_web_nodes = search('node', 'role:web_server')

all_web_nodes.each do |web_node|
    webserver = {
        'hostname' => web_node['cloud']['public_hostname'],
        'ipaddress' => web_node['cloud']['public_ipv4'],
        'port' => 80,
        'ssl_port' => 80,
    }

    members_pool.push(webserver)
end

node.default['haproxy']['members'] = members_pool

include_recipe 'haproxy::manual'
