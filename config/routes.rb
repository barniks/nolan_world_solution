KcwWorld::Application.routes.draw do

  resources :categories
  
  resources :proverbs
  
  resources :articles do
    resources :comments
  end
  
  resources :photos do
    resources :comments
  end
  
  resources :comments, :only => [:index, :destroy]
  
  match 'home' => 'home#index', :as => :home
  root :to => 'home#index'

end
