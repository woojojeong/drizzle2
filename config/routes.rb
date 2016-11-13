Rails.application.routes.draw do
  resources :posts
#  devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  get '/review' => 'welcome#review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
