Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'

  mount GrapeSwaggerRails::Engine, at: "/swagger"
  mount V1::Mount => V1::Mount::PREFIX

  resources :menu_items, only: [:new, :create]
end
