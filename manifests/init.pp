#
class ccgsimplecobbler () inherits ccgsimplecobbler::params {

    package { $ccgsimplecobbler::absent_packages:
        ensure  => absent,
    }

    package { $ccgsimplecobbler::packages:
        ensure  => present
    }

    file { '/ccgcobbler':
        ensure => 'directory',
        owner  => 'root',
        group  => 'root',
        mode   => '0750',
    } ->

    file {'/ccgcobbler/systemsetup.py':
        ensure  => present,
        content => template('ccgsimplecobbler/systemsetup.py.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/dhcp.template':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/dhcp.template.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/zone.template':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/zone.template.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    # preseeds
    file {'/etc/cobbler/ccgcloud.preseed.erb':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/ccgcloud.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/ccgswift.preseed':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/ccgswift.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/ceph.preseed':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/ceph.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/compute.preseed':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/compute.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/controller.preseed':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/controller.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

    file {'/etc/cobbler/ubuntu-server.preseed':
        ensure  => present,
        content => template('ccgsimplecobbler/cobbler/ubuntu-server.preseed.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }
}
