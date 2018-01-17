# 3
# apache::vhost {'mpli.example.com':
# 	port => '8080',
# 	docroot => '/tmp',
# }


package {'epel-release':
	ensure => 'installed',
	provider => 'yum',

}


package {'java-1.8.0-openjdk.x86_64':
	ensure => 'installed',
	provider => 'yum',

}

exec { 'yum_update':
	command => 'sudo yum update -y',
	path    => '/usr/local/bin/:/bin/',

}

include wget




# include rpmkey

rpmkey { 'D50582E6':
  ensure => present,
  source => 'https://pkg.jenkins.io/redhat-stable/jenkins.io.key',
}




wget::fetch { "download Jenkins Repo":
  source      => 'https://pkg.jenkins.io/redhat-stable/jenkins.repo',
  verbose     => false,
  destination => '/etc/yum.repos.d/jenkins.repo'
}


package {'jenkins':
	ensure => 'installed',
	provider => 'yum',

}

# Package['java-1.8.0-openjdk.x86_64'] -> Exec['yum_update'] 


# service {'jenkins':
# 	name => 'jenkins.service',
# 	ensure => 'running',
# 	enable =>  'true',
# }