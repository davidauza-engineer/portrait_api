# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Swapi::Planet::Builder do
  describe '#build' do
    subject { described_class.new(entities: entities).build }

    let(:planet) { instance_double('Planet', :[] => '') }
    let(:entities) { [planet, planet] }

    it { is_expected.to be_a_kind_of(Array) }

    it 'creates two instances of Swapi::Planet::Entity' do
      expect(subject.count).to eq 2
    end

    it 'creates instances of Swapi::Planet::Entity' do
      expect(subject.first).to be_an_instance_of(Swapi::Planet::Entity)
    end
  end
end
