begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :default => :spec
  task :test => :spec

  task :build do
    sh "gem build hoverfly-api.gemspec"
  end
rescue LoadError
  # no rspec available
end
