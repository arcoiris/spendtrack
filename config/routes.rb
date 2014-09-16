Rails.application.routes.draw do
  resources :expenditures, except: [:index]
end
