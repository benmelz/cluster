# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    email { Faker::Internet.unique.free_email(name: "#{first_name} #{last_name}") }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
  end
end
