# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.free_email(name: "#{first_name} #{last_name}") }
    password { 'password' }
    password_confirmation { password }
    profile_attributes { { first_name:, last_name: } }

    transient do
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name }
    end
  end
end
