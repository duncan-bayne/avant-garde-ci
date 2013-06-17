# can't use require_relative here because https://github.com/rack/rack/issues/115
require File.dirname(__FILE__) + '/api/build_api'
require File.dirname(__FILE__) + '/api/readme_api'
require File.dirname(__FILE__) + '/api/spec_api'

run AvantGardeService::AvantGardeApi.new
