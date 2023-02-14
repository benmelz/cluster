# frozen_string_literal: true

class Vehicle < ApplicationRecord
  validates :vin, presence: true, uniqueness: { case_sensitive: false }
end
