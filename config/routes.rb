Blocitoff::Application.routes.draw do
  get "todos/index"

  get "todos/show"

  get "todos/new"

  get "todos/edit"

  get "todos/destroy"

  devise_for :users

get "pages/index"
get "pages/about"
get "pages/contact"
get "pages/features"
get "pages/login"
get "pages/pricing"
get "pages/register"

root :to => 'pages#index'
end