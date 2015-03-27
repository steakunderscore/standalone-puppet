class puppet::profile::i3 {
  package { [
    'i3',
    'xbacklight',
    'conky'
  ]:
    ensure  => "installed"
  }

}
