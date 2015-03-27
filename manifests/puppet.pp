## Class to Call profiles based on Hostname

import 'profile/*.pp'
import 'role/*.pp'

node default {
  # Only ever going to apply this
  require puppet::role::base
}
