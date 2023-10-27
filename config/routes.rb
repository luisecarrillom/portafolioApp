Rails.application.routes.draw do
  # Rutas del portafolio
  root 'pages#home'
  get '/projects', to: 'pages#projects'
  get '/contact', to: 'pages#contact'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
