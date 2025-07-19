Rails.application.routes.draw do
  get "welcome/index"
  devise_for :users

  # Main pages
  root "welcome#index"

  get "about", to: "welcome#about"
  get "features", to: "welcome#features"
  get "contact", to: "welcome#contact"

  # Store related
  resources :stores do
    resources :products
  end

  # Professional services
  resources :professional_profiles do
    resources :services do
      resources :appointments
    end
  end

  # Business consulting
  resources :business_consulting_profiles do
    resources :consulting_services do
      resources :appointments
    end
  end

  # Skilled professionals
  resources :skilled_professional_profiles do
    resources :skill_services do
      resources :appointments
    end
  end

  # Calendar views
  resources :calendars, only: [ :index ]

  # Admin namespace
  namespace :admin do
    resources :users
    resources :stores
    resources :professional_profiles
    resources :business_consulting_profiles
    resources :skilled_professional_profiles
    root to: "dashboard#index"
  end
end
