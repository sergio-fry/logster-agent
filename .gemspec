spec = Gem::Specification.new do |s|
  s.author = 'Sergei O. Udalov'
  s.description = 'Logster Service Client'
  s.email = 'sergei.udalov@gmail.com'
  s.files = %w(
lib/logster.rb
.gemspec
init.rb
tasks/logster_push.rake
generators/logster_migration_generator.rb
generators/templates/migration.rb
  )
  s.homepage = 'http://github.com/sergio-fry/logster_agent'
  s.name = 'logster_agent'
  s.summary = 'Logster Agent'
  s.version = '0.0.1'
end
