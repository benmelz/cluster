# frozen_string_literal: true

module Users
  class PasswordsController < Devise::PasswordsController
    def create
      super do |resource|
        flash.now[:danger] = resource.errors.full_messages.to_sentence if resource.errors.any?
      end
    end

    def update
      super do |resource|
        flash.now[:danger] = resource.errors.full_messages.to_sentence if resource.errors.any?
      end
    end
  end
end
