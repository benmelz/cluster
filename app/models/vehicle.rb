# frozen_string_literal: true

require 'vpic'

class Vehicle < ApplicationRecord
  validates :vin, presence: true, uniqueness: { case_sensitive: false }
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true

  before_validation :decode_vin

  private

  def decode_vin
    return if vin.blank?

    decoded_vin = VPIC.decode_vin vin
    assign_attributes make: decoded_vin[:make].downcase,
                      model: decoded_vin[:model].downcase,
                      year: decoded_vin[:model_year]
  end
end
