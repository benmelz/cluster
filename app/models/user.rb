# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_one :profile, dependent: :destroy, required: true, validate: true
  accepts_nested_attributes_for :profile, update_only: true

  delegate :first_name, :last_name, to: :profile
end
