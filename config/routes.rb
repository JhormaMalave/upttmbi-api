Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]   
      resources :tokens, only: %i[create] 
      resources :roles, only: %i[index]
      resources :periods, only: %i[index show create update destroy]
      resources :courses, only: %i[index]
      resources :sections, only: %i[index show create update destroy]
      resources :subjects, only: %i[index show create update destroy]
      resources :teacher_categories, only: %i[index]
      resources :teachers, only: %i[index show create update destroy]
    end
  end

end
