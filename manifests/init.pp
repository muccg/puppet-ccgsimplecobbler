class ccgsimplecobbler () inherits ccgsimplecobbler::params {
  
    package { $ccgcloud::absent_packages:
        ensure  => absent,
    }

    package { $ccgsimplecobbler::packages:
        ensure  => present
    }


    file {'/opt/cobbler/systemsetup.py':
        content => template('/systemsetup.py'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    file {'/etc/cobbler/dhcp.template':
        content => template('/cobbler/dhcp.template'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    file {'/etc/cobbler/zone.template':
        content => template('/cobbler/zone.template'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }

    # preseeds
    file {'/etc/cobbler/ccgcloud.preseed':
        content => template('/cobbler/ccgcloud.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ccgswift.preseed':
        content => template('/cobbler/ccgswift.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ceph.preseed':
        content => template('/cobbler/ceph.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/compute.preseed':
        content => template('/cobbler/compute.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/controller.preseed':
        content => template('/cobbler/controller.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
    file {'/etc/cobbler/ubuntu-server.preseed':
        content => template('/cobbler/ubuntu-server.preseed'),
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
    }
}
