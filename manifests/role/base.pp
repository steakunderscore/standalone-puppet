class puppet::role::base {
  require puppet::profile::base

  # Development
  require puppet::profile::rvm
  require puppet::profile::nvm
  require puppet::profile::fresh
}
