require 'bundler/gem_tasks'
require 'rubocop/rake_task'
require 'bundler/audit/task'

RuboCop::RakeTask.new
Bundler::Audit::Task.new

task default: [:rubocop, 'bundle:audit']
