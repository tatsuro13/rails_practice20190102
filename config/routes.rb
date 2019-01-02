Rails.application.routes.draw do
  get 'static_pages/performance_sample'
  get 'books/index'
  # resources :users
  # resources :articles
  #
  # namespace :admin do
  #   resources :users
  # end

  resources :users, shallow: true do
    resources :articles
  end
  get 'home/index'
  get '/hello', to: 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
