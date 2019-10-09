Rails.application.routes.draw do
  root 'articles#index'
  devise_for :editors
  devise_for :users
  resources :articles
  post "articles/:id/edit" => "articles#edit"
end
