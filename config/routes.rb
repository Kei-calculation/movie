Rails.application.routes.draw do
#  get 'movies/search'
#  get 'movies/show'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :login
get 'login/show' => 'login#show'
root 'login#index'

get 'movies/search' => 'movies#search'
get 'movies/show' => 'movies#show'
get 'movies/:id' => "movies#show",as: 'detail'

resources :impressions do
  resources :likes, only: [:create, :destroy]
end

end
