Rails.application.routes.draw do

  resources :pages, only: [:index, :show]
  # Defines the root path route ("/")
   root "pages#index"

  # Define admin namespace
  namespace :admin do
    resources :pages
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Define custom routes for pages
  Page.all.where.not(:slug => "").each do |page|
    get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  end
 
end
