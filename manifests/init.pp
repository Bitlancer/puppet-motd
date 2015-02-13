# == Class: motd
#
# This class installs a templated MOTD
#
# === Parameters
#
# [*motd*]
#   The filename to manage (/etc/motd usually)
#
# === Variables
#
# === Examples
#
# === Authors
#
# Bitlancer LLC (contact@bitlancer.com)
#
class motd (
  $motd     = '/etc/motd',
  $template = 'motd/motd.erb'
) {
  file { $motd:
    owner => root,
    group => root,
    content => template($template),
    ensure => present,
  }
}
