require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'bundler/audit/task'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new
Bundler::Audit::Task.new

task default: [:rubocop, :spec, 'bundle:audit']

task travis: ['zeebe:start', :default, 'zeebe:stop']

desc 'Starts Zeebe Docker container'
task 'zeebe:start' do
  sh 'docker run -d --name zeebe --rm -p 26500:26500 camunda/zeebe:0.24.3'
  sleep(10)
end

desc 'Stops Zeebe Docker container'
task 'zeebe:stop' do
  sh 'docker rm -f -v zeebe'
end
