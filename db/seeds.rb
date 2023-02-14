# frozen_string_literal: true

valid_vins = %w[1A8HW58268F133559
                JH4DA1740KS003967
                JT2BG22K3Y0485107
                JH4KA7560RC003647
                JHMZE2H73AS009608
                JH4KA2650HC000268
                2FAFP73W1WX172908
                SALVT2BG1CH654491
                JH4DB1640LS003578
                1HD1FCW116Y619817]

FactoryBot.create(:user, email: 'ben@development.com', profile_attributes: { first_name: 'Ben', last_name: 'Melz' })
FactoryBot.create_list(:customer, 10)
valid_vins.each { |vin| FactoryBot.create(:vehicle, vin:) }
