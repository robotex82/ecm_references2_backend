Ecm::References::Backend::Engine.routes.draw do
  resources :categories
  resources :references do
    member do
      post :toggle_published
    end
  end

  root to: 'home#index'
end
