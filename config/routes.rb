Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root 'home#index'

  get 'sign_up_as_customer' => "home#sign_up_as_customer"
  get 'sign_up_as_professional' => "home#sign_up_as_professional"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
