Blocitoff::Application.routes.draw do
get "pages/index"
get "pages/about"
get "pages/contact"
get "pages/features"
get "pages/login"
get "pages/pricing"
get "pages/register"

root :to => 'pages#index'
end