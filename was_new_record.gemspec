Gem::Specification.new do |s|
  s.name = "was_new_record"
  s.summary = "Run after_commit callbacks on new Active Record instances."
  s.description = "Run after_commit callbacks on new Active Record instances."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = "0.0.1"
  s.authors = ["Nick Ragaz"]
  s.email = "nick.ragaz@gmail.com"
  s.homepage = "http://github.com/nragaz/was_new_record"
  
  s.add_dependency 'activerecord', '~> 3'
  s.add_development_dependency 'sqlite3'
end
