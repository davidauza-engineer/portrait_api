# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Swapi::Implementation do
  describe '#search' do
    subject { described_class.new(factory: factory).search }

    let(:factory) { instance_double(::Swapi::Factory) }

    it 'raises a NotImplementedError' do
      expect { subject }.to raise_error(NotImplementedError)
    end
  end
end
