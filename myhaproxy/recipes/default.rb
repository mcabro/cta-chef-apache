#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

members_pool = []

all_web_nodes = search('node', 'role:web_server')

all_web_nodes.each_with_index do |web_node, index|
 
    webserver = {
        'hostname' => "web" + index.to_s + web_node['platform'] ,
        'ipaddress' => web_node['cloud']['public_ipv4'],
        'port' => 80,
        'ssl_port' => 80,
    }

    members_pool.push(webserver)
end

node.default['haproxy']['members'] = members_pool

include_recipe 'haproxy::manual'
