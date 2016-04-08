Rails.application.routes.draw do
  devise_for :users

  scope :api, defaults: { format: 'json' } do
    scope :v1 do
      resources :messages, only: [:index, :show]
    end
  end

  root to: 'static_pages#login'
end
