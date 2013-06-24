require_relative '../../api/build_api.rb'
require_relative '../spec_helper.rb'
require 'rack/test'
require 'test/unit'

describe 'Build API' do
  include Rack::Test::Methods

  def app
    AvantGardeService::AvantGardeApi.new
  end

  describe 'receiving a POST notification of receipt' do

    describe 'containing the minimum data to run a build' do

      before do
        @payload = IO.read('./spec/fixtures/github_post_receive.json')
      end

      it 'returns 202 Accepted' do
        post('/receive', payload: @payload)
        last_response.status.should == 202
      end

      xit 'queues a new build' do
      end

    end

    describe 'not containing the minimum data to run a build' do

      before do
        @payload = '{}'
      end

      it 'returns 400 Bad Request' do
        post('/receive', payload: @payload)
        last_response.status.should == 400
      end

      xit 'does not queue a new build' do
      end

    end
  end
end

