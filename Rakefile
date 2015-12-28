require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc 'launch rspec tests'
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = ['-c', '-f progress', '-r ./spec/spec_helper.rb']
    t.pattern = 'spec/**/*_spec.rb'
  end
end

task :default => :spec
