class puppet::profile::base {
  package { [
    'puppet',
    'vim',
    'git',
    'zsh',
    'lm-sensors',
    'docker',
    'fail2ban',
    'sshfs',
    'build-essential',
    'tree',
    'keepassx',
    'pidgin',
    'pidgin-otr'
  ]:
    ensure  => "installed"
  }
}
