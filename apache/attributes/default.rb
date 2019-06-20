
case node['platform_family']
when 'debian'
    default['apache']['package_name'] = 'apache2'
else
    default['apache']['package_name'] = 'httpd'
end

