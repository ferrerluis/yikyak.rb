Gem::Specification.new do |s|
  s.name        = 'yikyak'
  s.version     = '0.1.2'
  s.date        = '2016-10-01'
  s.summary     = "Ruby Wrapper for YikYak's API"
  s.description = "Super easy Ruby library for using YikYak's public API"
  s.authors     = ["Luis Ferrer-Labarca"]
  s.email       = 'gems@ferrerluis.com'
  s.files       = ["lib/yikyak.rb"]
  s.homepage    =
    'http://rubygems.org/gems/yikyak'
  s.license       = 'MIT'

  s.add_dependency 'jwt', '>= 1.5.6'
  s.add_dependency 'httparty', '>= 0.14.0'
end
