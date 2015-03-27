class puppet::profile::nvm {
  package { $nvm_packages:
    ensure => 'installed',
    before => Exec['install-nvm'],
  }

  exec { 'install-nvm':
    command     => "curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash",
    path        => '/usr/bin:/usr/sbin:/bin',
    creates     => "/home/henry/.nvm/nvm.sh",
    user        => 'henry',
    provider    => 'shell',
    environment => "HOME=/home/henry",
  }
}
