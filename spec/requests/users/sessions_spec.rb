# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sessions' do
  describe 'GET /users/sign_in' do
    subject(:call) { get '/users/sign_in' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
    end
  end
end
