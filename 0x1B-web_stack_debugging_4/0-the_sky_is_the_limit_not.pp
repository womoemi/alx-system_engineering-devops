# Increase the load for Nginx

exec { 'increase-limit':
  command => 'sed -i "s/15/5000/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# restart nginx
->exec {'restart-nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
