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
  $motd = '/etc/motd',
) {
  file { $motd:
    owner => root,
    group => root,
    content => template('motd/motd.erb'),
    ensure => present,
  }
}
