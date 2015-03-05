Rails.application.routes.draw do

  devise_for :users
  root 'board_threads#index'
  resources :board_threads do
    resources :posts
  end

end
