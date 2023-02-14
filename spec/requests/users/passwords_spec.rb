# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Passwords' do
  describe 'POST /users/password' do
    subject(:call) { post '/users/password', params: }

    context 'with valid parameters' do
      let(:user) { create(:user) }
      let(:params) { { user: { email: user.email } } }

      it 'responds with a redirect to the login page' do
        call
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'with invalid parameters' do
      let(:params) { { user: { email: 'notanemail@test.com' } } }

      it 'responds successfully' do
        call
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT /users/password' do
    subject(:call) { put '/users/password', params: }

    context 'with valid parameters' do
      let(:user) { create(:user) }
      let(:params) do
        { user: { reset_password_token: user.send_reset_password_instructions,
                  password: 'password',
                  password_confirmation: 'password' } }
      end

      it 'redirects to the root page' do
        call
        expect(response).to redirect_to(root_path)
      end
    end

    context 'with invalid parameters' do
      let(:params) do
        { user: { reset_password_token: 'badtoken', password: 'badpassword', password_confirmation: 'worsepassword' } }
      end

      it 'responds successfully' do
        call
        expect(response).to be_successful
      end
    end
  end
end
