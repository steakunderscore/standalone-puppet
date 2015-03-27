class puppet::profile::fresh inherits puppet::profile::params::fresh {
  package { $fresh_packages:
    ensure => 'installed',
    before => Exec['install-fresh'],
  }

  exec { 'install-fresh':
    command     => 'FRESH_LOCAL_SOURCE=steakunderscore/dotfiles bash -c "`curl -sL get.freshshell.com`"',
    path        => '/usr/bin:/usr/sbin:/bin',
    creates     => "/home/henry/.dotfiles/freshrc",
    user        => 'henry',
    provider    => 'shell',
    environment => "HOME=/home/henry",
  }
}
