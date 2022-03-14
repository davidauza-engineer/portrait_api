# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Swapi::Base do
  describe 'constants' do
    it 'has the right BASE_URL value' do
      expect(described_class::BASE_URL).to eq 'https://swapi.dev/api'
    end
  end
end
