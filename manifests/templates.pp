class base {
	include user
	include sudo

	package {
		"htop":              ensure => latest;
		"vim":               ensure => latest;
		"screen":            ensure => latest;
		"git":               ensure => latest;
		"exuberant-ctags":   ensure => latest;
		"tcpdump":           ensure => latest;
	}
}

class dbserver {
	include base
	include mysql
}
