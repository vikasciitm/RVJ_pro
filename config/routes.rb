Rails.application.routes.draw do
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "services"=>"servic#services"
  get "allemp"=>"employees#allemp"
  get "new"=>"employees#new"
end
