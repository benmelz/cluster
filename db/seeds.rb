# frozen_string_literal: true

FactoryBot.create(:user,
                  email: 'ben@development.com',
                  profile: FactoryBot.build(:user_profile, first_name: 'Ben', last_name: 'Melz'))
