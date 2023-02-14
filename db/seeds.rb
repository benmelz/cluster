# frozen_string_literal: true

FactoryBot.create(:user, email: 'ben@development.com', profile_attributes: { first_name: 'Ben', last_name: 'Melz' })
FactoryBot.create_list(:customer, 50)
