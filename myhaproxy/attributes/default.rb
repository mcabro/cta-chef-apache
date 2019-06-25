=begin
# se sustituye por una búsqueda en la receta default
node.default['haproxy']['members'] = [
    {
        'hostname' => 'web1',
        'ipaddress' => '18.208.193.188',
        'port' => 80,
        'ssl_port' => 80,
    },
    {
        'hostname' => 'web2w',
        'ipaddress' => '54.234.3.30',
        'port' => 80,
        'ssl_port' => 80,
    },    
]
=end
