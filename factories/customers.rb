# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    sequence(:email) { |n| "customer#{n}@cluster.com" }
    sequence(:first_name) { |n| "FirstName#{n}" }
    sequence(:middle_name) { |n| "MiddleName#{n}" }
    sequence(:last_name) { |n| "LastName#{n}" }
  end
end
