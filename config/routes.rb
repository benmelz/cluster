# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#root'

  devise_for :users, controllers: { passwords: 'users/passwords', sessions: 'users/sessions' }
end
