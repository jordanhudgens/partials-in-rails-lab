Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :posts do
    resources :comments, except: [:index], controller: 'posts/comments'
  end
  
  root to: "pages#home"
end
