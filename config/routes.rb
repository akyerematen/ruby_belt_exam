Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "online_lending/register"
  get "online_lending/login"
  get "online_lending/lender"
  get "online_lending/borrower"
  post "sessions" => "sessions#create"
  post "lenders" => "lenders#create"
  post "lenders/add" => "lenders#add"
  post "borrowers" => "borrowers#create"

end
