# frozen_string_literal: true

# frozen_string_literal.rb

require 'rails_helper'

RSpec.describe 'Planets Requests', type: :request do
  describe 'GET /v1/swapi/planets' do
    context 'with an appropriate request' do
      subject { response }

      let(:request) { get '/v1/swapi/planets', params: params }
      let(:planet_name) { 'Tattoine' }
      let(:params) { { planet: { name: planet_name } } }

      context 'when the search includes a planet name' do
        let(:api_response) do
          File.read('spec/fixtures/v1/swapi/planets/successful_planet_fetch_with_name.json')
        end

        before do
          WebMock.stub_request(:get, "#{Swapi::Base::BASE_URL}/planets?search=#{planet_name}")
                 .to_return(body: api_response, headers: { content_type: 'application/json' })
          request
        end

        it { is_expected.to have_http_status(:ok) }

        it 'fetches a single planet' do
          expect(JSON.parse(subject.body)['data'].count).to eq(1)
        end
      end

      context "when the search doesn't include a planet name" do
        let(:params) { nil }
        let(:api_response) do
          File.read('spec/fixtures/v1/swapi/planets/successful_planets_fetch_without_name.json')
        end

        before do
          WebMock.stub_request(:get, "#{Swapi::Base::BASE_URL}/planets?search=")
                 .to_return(body: api_response, headers: { content_type: 'application/json' })
          request
        end

        it { is_expected.to have_http_status(:ok) }

        it 'fetches 10 planets' do
          expect(JSON.parse(subject.body)['data'].count).to eq(10)
        end
      end

      context 'when an error is raised' do
        before do
          allow(Swapi::Entity).to receive(:new).and_raise(StandardError)
          request
        end

        it { is_expected.to have_http_status(:internal_server_error) }

        it 'responses appropriately' do
          expect(subject.body).to eq({ error: { code: 500, message: 'StandardError' } }.to_json)
        end
      end
    end
  end
end
