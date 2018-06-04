require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :repl do
  begin
    require 'pry'
    repl = :pry
  rescue LoadError
    require 'irb'
    repl = :irb
  end

  $LOAD_PATH.unshift 'lib'
  require 'lookup_aws_secretsmanager'
  obj = LookupAwsSecretsManager.new
  obj.send repl
end
