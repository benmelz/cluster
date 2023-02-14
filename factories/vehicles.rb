# frozen_string_literal: true

FactoryBot.define do
  factory :vehicle do
    vin { Faker::Vehicle.unique.vin }
  end
end
