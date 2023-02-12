# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    profile { build :user_profile, user: instance }
    sequence(:email) { |n| "user#{n}@test.com" }
    password { 'password' }
    password_confirmation { password }
  end
end
