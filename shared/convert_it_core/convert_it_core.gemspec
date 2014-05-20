Gem::Specification.new do |s|
  s.name        = 'convert_it_core'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Project gem for plain ruby stuff"
  s.description = "This gem allows us to test core business logic and application code without the UI, DB, or API and then have those plugged in when we use this in the RubyMotion app"
  s.authors     = ["Jack Watson-Hamblin"]
  s.email       = 'info@fluffyjack.com'
  s.files       = Dir.glob('lib/**/*.rb')
  s.homepage    = 'http://motioninmotion.tv'
  s.require_paths = ["lib"]
end
