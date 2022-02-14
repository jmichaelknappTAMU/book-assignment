Rails.application.routes.draw do
  resources :book_checkouts
  resources :users
  resources :books do
		member do
			get :delete
		end
	end
	root 'book_checkouts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
