# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer do
  describe 'associations' do
    pending 'do not yet exist'
  end

  describe 'validations' do
    subject { build(:customer) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
end
