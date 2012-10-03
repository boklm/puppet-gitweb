class gitweb(
    $projectroot = '/git', 
    $projects_list = '/git/projects.list',
    $git_temp = '/tmp'
) {
    package{'gitweb':
	ensure => present,
    }

    file {'/etc/gitweb.conf':
	ensure => present,
	owner => root,
	group => root,
	mode => 0644,
	content => template('gitweb/gitweb.conf'),
    }
}
