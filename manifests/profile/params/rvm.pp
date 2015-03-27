class puppet::profile::params::rvm inherits puppet::profile::params {
  $rvm_packages = ['make', 'libc6-dev', 'libreadline6-dev', 'zlib1g-dev',
    'libssl-dev', 'libyaml-dev', 'libsqlite3-dev', 'sqlite3', 'autoconf',
    'libgdbm-dev', 'libncurses5-dev', 'automake', 'libtool', 'bison',
    'pkg-config', 'libffi-dev', 'gnupg2']
}

