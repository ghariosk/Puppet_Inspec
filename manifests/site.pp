class {'apache':}

apache::vhost {'mpli.example.com':
	port => '8080',
	docroot => '/tmp',
}