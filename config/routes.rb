Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'gallery', to: 'welcome#gallery'
  get 'vacancies', to: 'welcome#vacancies'
  
  get 'feedback', to: 'welcome#feedback'
  resource :feedback
  
  get 'shoppingchart', to: 'welcome#shoppingchart'
  resource :shoppingchart, only: [:show, :update, :destroy]
  
  
  get 'menu', to: 'welcome#menu'
   resource :menu, only: [:show]
end
