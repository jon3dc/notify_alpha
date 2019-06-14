Rails.application.routes.draw do

  resources :beacons
  resources :majors
  resources :accounts
	resources :users
	
	# devise_for :users
	devise_for :user, :controllers => { :confirmations => "confirmations" }
	devise_scope :user do
  		put 'user/confirmation', to: 'confirmations#update'
	end
	
	get 'static_pages/home'
	get 'static_pages/about'
	get 'static_pages/contact'
	get 'static_pages/imprint'
	get 'static_pages/privacy'


	devise_scope :user do
		get "sign_in", :to => "devise/sessions#new"
		get "sign_out", :to => "devise/sessions#destroy"
	end

	root to: 'static_pages#home'
end



