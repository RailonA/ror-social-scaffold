# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'

  get 'send_request' => 'friendships#send_request'
  get 'accept_invite' => 'friendships#accept_invitation'
  get 'pending_request' => 'friendships#pending_invitation'
  delete 'reject_invite' => 'friendships#reject_invitation'
  delete 'remove_friend' => 'friendships#destroy'

  devise_for :users

  resources :users, only: %i[index show]
  resources :posts, only: %i[index create] do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
