
node db1 {
	include dbserver

	include apache
	include munin
	include munin::plugins::mysql

	include rvm::system

	rvm::system_user { nathan: }

	if $rvm_installed == "true" {
		rvm_system_ruby {
			'ruby-1.9.2-p290':
				ensure => 'present',
				default_use => true;
		}
	}


}
