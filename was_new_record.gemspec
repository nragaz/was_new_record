# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "was_new_record"
  s.summary = "Run after_commit callbacks on new Active Record instances."
  s.description = "Run after_commit callbacks on new Active Record instances."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = "0.0.1"
  
  s.add_dependency 'activerecord', '~> 3'
  s.add_development_dependency 'sqlite3'
end
