# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vehicle do
  describe 'associations' do
    pending 'do not yet exist'
  end

  describe 'validations' do
    subject { build(:vehicle) }

    it { is_expected.to validate_presence_of(:vin) }
    it { is_expected.to validate_uniqueness_of(:vin).case_insensitive }
  end
end
