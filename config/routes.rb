Rails.application.routes.draw do
  resources :products do
    collection do 
      get "add_to_cart/:id", to: "products#add_to_cart",as: "add_to_cart"
      get :show_cart
      get "delete_from_cart/:id", to: "products#delete_from_cart",as: "delete_from_cart"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get "products/add_to_cart", to:"products#add_to_cart"
  # Defines the root path route ("/")
  root "products#index"
  
  
end
