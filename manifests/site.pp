# site.pp

import "templates"
import "nodes"
import "rvm"

# global defaults
Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }

Package {
    provider => $operatingsystem ? {
        debian => aptitude,
		ubuntu => apt-get,
    }
}
