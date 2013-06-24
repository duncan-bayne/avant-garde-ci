require_relative '../../api/build_api.rb'
require_relative '../spec_helper.rb'

describe 'Build API' do

  describe 'receiving a POST notification of a commit' do

    describe 'containing the minimum data to run a build' do

      it 'returns 202 Accepted' do
      end

    end

    describe 'not containing the minimum data to run a build' do

      it 'returns 400 Bad Request' do
      end

    end
  end
end

