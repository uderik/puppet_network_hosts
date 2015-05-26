class network_hosts {
  $facter_fqdn = $facts['fqdn']
  $facter_ipaddress = $facts['ipaddress']
  $facter_hostname = $facts['hostname']

  file {"/etc/hosts":
      ensure  => "present",
      owner   => root,
      group   => root,
      mode    => 644,
      content => template('network_hosts/hosts.rb'),
  }
}

