Rails.application.routes.draw do
  resources :schedules
  resources :school_classes
  resources :teachers
 
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get 'home/about'
  root 'home#index'

end
