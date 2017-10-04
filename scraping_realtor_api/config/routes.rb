Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end

# users seem to be set up. try making some users via the console
