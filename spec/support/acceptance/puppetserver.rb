def unsupported_puppetserver
  case host_inventory['facter']['os']['name']
  when 'Archlinux'
    true
  when 'Fedora'
    true
  when 'Debian'
    host_inventory['facter']['os']['release']['major'] == '11'
  end
end
