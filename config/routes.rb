Rails.application.routes.draw do
  resources :blogs

  root to: redirect('/blogs')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if defined?(Sidekiq) && defined?(Sidekiq::Web)
    mount Sidekiq::Web => '/sidekiq'
  end
end
