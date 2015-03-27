class puppet::profile::rvm inherits puppet::profile::params::rvm {
  package { $rvm_packages:
    ensure => 'installed',
    before => Exec['install-rvm'],
  }

  exec { 'install-rvm-gpg-key':
    path        => '/usr/bin:/usr/sbin:/bin',
    command     => 'gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3',
    user        => "henry",
    unless      => 'gpg2 --list-keys D39DC0E3',
    require     => Package['gnupg2'],
  }

  exec { 'install-rvm':
    command     => "curl -L https://get.rvm.io | bash -s stable",
    path        => '/usr/bin:/usr/sbin:/bin',
    creates     => "/home/henry/.rvm/bin/rvm",
    user        => 'henry',
    provider    => 'shell',
    environment => "HOME=/home/henry",
    require     => Exec['install-rvm-gpg-key']
  }
}
