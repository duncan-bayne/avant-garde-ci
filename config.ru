# can't use require_relative here because https://github.com/rack/rack/issues/115
require File.dirname(__FILE__) + '/api/spec_api'
require File.dirname(__FILE__) + '/api/readme_api'
require File.dirname(__FILE__) + '/api/calculator_api'

run CalculatorService::CalculatorApi.new
