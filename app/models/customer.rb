# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
