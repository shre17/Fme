Rails.application.routes.draw do
  devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations',
		confirmations: 'users/confirmations'
	  }
  root 'home#index'

  get 'sign_up_as_customer' => "home#sign_up_as_customer"

  resources :professional_accounts do     
	member do      
	 patch :update_account   
	 end  
	end
	
end
