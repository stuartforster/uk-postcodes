UkPostcodes::Application.routes.draw do
  root :to => 'postcode#index'

  get "postcode/search", as: "postcode_search", to: 'postcode#search'
  get "postcode/nearest", as: "postcode_nearest", to: 'postcode#nearest'
  get "postcode/reverse", as: "postcode_reverse", to: 'postcode#reverse'

  resources :postcode, :only => [:index, :show]
    
end
