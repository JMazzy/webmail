Rails.application.routes.draw do
  devise_for :users

  scope :api, defaults: { format: 'json' } do
    scope :v1 do
      resources :messages, only: [:index, :show]
    end
  end

  resources :staticpages, only: [:index, :login, :sess]

  get "/auth/google_oauth2/callback", to: "staticpages#sess"

  root to: 'staticpages#login'
end
