# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Swapi::Planet::Implementation do
  describe '#search' do
    subject { described_class.new(factory: factory).search(name: planet_name) }

    let(:factory) { instance_double(Swapi::Factory) }
    let(:planet_name) { 'Tattoine' }
    let(:planets) do
      JSON.parse(File.read('spec/fixtures/v1/swapi/planets/successful_planet_fetch_with_name.json'))
    end
    let(:builder_instance) { instance_double(Swapi::Planet::Builder, build: []) }

    before do
      allow(Swapi::Planet::Searcher).to receive(:run!).with(name: planet_name).and_return(planets)
    end

    it 'calls the Swapi::Planet::Searcher' do
      subject
      expect(Swapi::Planet::Searcher).to have_received(:run!).with(name: planet_name)
    end

    it 'calls the Swapi::Planet::Builder' do
      allow(Swapi::Planet::Builder).to receive(:new).with(entities: planets['results'])
                                                    .and_return(builder_instance)
      subject
      expect(builder_instance).to have_received(:build)
    end
  end
end
