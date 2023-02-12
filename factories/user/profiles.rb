# frozen_string_literal: true

FactoryBot.define do
  factory :user_profile, class: 'User::Profile' do
    user { build :user, profile: instance }
    sequence(:first_name) { |n| "FirstName#{n}" }
    sequence(:last_name) { |n| "LastName#{n}" }
  end
end
