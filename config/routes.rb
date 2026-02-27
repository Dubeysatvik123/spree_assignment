Rails.application.routes.draw do
  mount Spree::Core::Engine, at: '/'

  get "up" => "rails/health#show", as: :rails_health_check
end