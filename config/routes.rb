Rails.application.routes.draw do
  root "todo#index"
  match '/create', :to => 'todo#create', :via => :post
  match '/delete/:id', :to => 'todo#destroy', :via => :get
  match '/update/:id', :to => 'todo#update', :via => :get
  match '/add' , :to => 'todo#create' , :via => :post
  # get 'todo/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
