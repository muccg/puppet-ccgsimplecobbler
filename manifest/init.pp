class ccgsimplecobbler () inherits ccgsimplecobbler::params {
  
    package { $ccgcloud::absent_packages:
        ensure  => absent,
    }

    file {'/opt/cobbler/systemsetup.py':
         content => template('/systemsetup.py.erb'),
    }

    package { $ccgsimplecobbler::packages:
         ensure  => present
    }
}
