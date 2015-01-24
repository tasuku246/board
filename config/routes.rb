Rails.application.routes.draw do

  root 'board_threads#index'
  resources :board_threads

end
