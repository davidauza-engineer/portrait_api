# frozen_string_literal: true

# rubocop:disable RSpec/DescribeClass
RSpec.describe 'test' do
  # rubocop:enable RSpec/DescribeClass
  subject { 1 }

  it { is_expected.to eq 1 }
end
