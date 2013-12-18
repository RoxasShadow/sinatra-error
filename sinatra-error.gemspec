Gem::Specification.new { |s|
	s.name          = 'sinatra-error'
	s.version       = '0.1'
	s.author        = 'Giovanni Capuano'
	s.email         = 'webmaster@giovannicapuano.net'
	s.homepage      = 'http://www.giovannicapuano.net'
	s.platform      = Gem::Platform::RUBY
	s.summary       = 'Error handling in Sinatra'
	s.description   = 'Error handling in Sinatra like Grape'
  	s.license       = 'WTFPL'
	s.require_paths = ['lib']
	s.files         = Dir.glob('lib/**/*.rb')

	s.add_dependency 'sinatra'
	s.add_dependency 'json'
}


