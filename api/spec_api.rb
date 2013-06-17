require_relative '../spec/spec_helper'
require 'json'
require 'open3'
require 'sinatra/base'

module AvantGardeService

  class AvantGardeApi < Sinatra::Base

    get '/specs' do
      content_type :json
      json_from_spec_run
    end

  end
end
