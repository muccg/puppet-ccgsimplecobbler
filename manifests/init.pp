#
class ccgsimplecobbler () inherits ccgsimplecobbler::params {
  
    package { $ccgsimplecobbler::absent_packages:
        ensure  => absent,
    }

    package { $ccgsimplecobbler::packages:
        ensure  => present
    }


    file { "/ccgcobbler":
        ensure => "directory",
        owner  => "root",
        group  => "root",
        mode   => 750,
    } ->
    file {'/ccgcobbler/systemsetup.py':
        content => template('ccgsimplecobbler/systemsetup.py.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    file {'/etc/cobbler/dhcp.template':
        content => template('ccgsimplecobbler/cobbler/dhcp.template.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    file {'/etc/cobbler/zone.template':
        content => template('ccgsimplecobbler/cobbler/zone.template.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    # preseeds
    file {'/etc/cobbler/ccgcloud.preseed.erb':
        content => template('ccgsimplecobbler/cobbler/ccgcloud.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ccgswift.preseed':
        content => template('ccgsimplecobbler/cobbler/ccgswift.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ceph.preseed':
        content => template('ccgsimplecobbler/cobbler/ceph.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/compute.preseed':
        content => template('ccgsimplecobbler/cobbler/compute.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/controller.preseed':
        content => template('ccgsimplecobbler/cobbler/controller.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ubuntu-server.preseed':
        content => template('ccgsimplecobbler/cobbler/ubuntu-server.preseed.erb'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
}
