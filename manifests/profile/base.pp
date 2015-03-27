# My Default profile, which is called regardless of host

class puppet::profile::base inherits puppet::profile::base::params {
  package { $base_packages:
    ensure  => "installed",
  }

  package { [
             'i3',
             'lm-sensors',
             'docker',
             'fail2ban',
             'sshfs',
             'build-essential',
             'tree',
             'keepassx',
             'pidgin',
             'pidgin-otr',
            ]:
    ensure  => "installed",
  }

}
