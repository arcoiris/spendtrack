Rails.application.routes.draw do
  root 'static_pages#welcome'
  resources :expenditures, except: [:index]
end
