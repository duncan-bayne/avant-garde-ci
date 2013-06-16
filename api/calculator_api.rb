require_relative '../lib/calculator'
require 'json'
require 'sinatra/base'

module CalculatorService

  class CalculatorApi < Sinatra::Base

    get '/add/:addend_a/:addend_b' do
      sum = Calculator.new.add(params[:addend_a].to_f, params[:addend_b].to_f)

      content_type :json
      {
        sum: sum
      }.to_json
    end

  end
end
