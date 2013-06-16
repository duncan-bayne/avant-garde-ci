require_relative '../lib/fork.rb'
require 'open3'
require 'rspec'
require 'rspec/core/formatters/json_formatter'

def json_from_spec_run
  with_fork do |write|
    ENV['RACK_ENV'] = 'test'

    config = RSpec.configuration
    json_formatter = RSpec::Core::Formatters::JsonFormatter.new(config.output)
    reporter =  RSpec::Core::Reporter.new(json_formatter)
    config.instance_variable_set(:@reporter, reporter)
    RSpec::Core::Runner.run(Dir.glob('spec/**/*_spec.rb'))

    write.puts json_formatter.output_hash.to_json
  end
end

