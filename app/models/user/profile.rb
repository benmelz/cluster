# frozen_string_literal: true

class User < ApplicationRecord
  class Profile < ApplicationRecord
    belongs_to :user

    validates :user_id, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
  end
end
