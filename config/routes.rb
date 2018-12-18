Rails.application.routes.draw do
  root "pages#home"
  resources :accounts, :shareholders, :transactions, :plans
  put "/transactions/:id/approve", to: "transactions#approve"
  post "/shareholders/authenticate", to: "shareholders#authenticate"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
