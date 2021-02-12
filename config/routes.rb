Rails.application.routes.draw do
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'locations#index'
end
