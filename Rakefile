require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

desc 'Create setup folder for a new kata'
task :new_kata do
  ruby 'new_kata.rb'
end

desc 'Look for style guide offenses in your code'
task :rubocop do
  sh 'rubocop --format simple || true'
end

task default: %i[rubocop]
