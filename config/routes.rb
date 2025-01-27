Rails.application.routes.draw do
  resources :schedules do
    collection do
      get :anos_iniciais   # Route for "Anos Iniciais"
      get :ensino_medio    # Route for "Ensino Médio"
    end
  end

  resources :school_classes
  resources :teachers

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get 'home/about'
  root 'home#index'
end


