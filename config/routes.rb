Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :bed_types
  resources :beds
  resources :companies
  resources :company_types
  resources :states
  resources :cities  
end
