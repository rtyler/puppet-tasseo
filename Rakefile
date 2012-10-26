require 'rake'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
  t.rspec_opts = '--order random --fail-fast --color'
end

Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = '--color --format progress'
end

task :default => [:spec, :cucumber]
