# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Swapi::Planet::Searcher do
  describe '#run!' do
    subject { described_class.run!(name: planet_name) }

    let(:planet_name) { 'Earth' }
    let!(:api_request) do
      stub_request(:get, 'https://swapi.dev/api/planets?search=Earth')
        .with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent' => 'Ruby'
          }
        )
        .to_return(status: 200, body: '', headers: { content_type: 'application/json' })
    end

    it 'does the right API request' do
      subject
      expect(api_request).to have_been_requested
    end
  end
end
