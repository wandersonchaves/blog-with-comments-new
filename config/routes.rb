Rails.application.routes.draw do
  devise_for :accounts # Rota padrão criada pelo devise
  resources :posts do # Rota principal
    resources :comments # Rota secundária, para ela funcionar precisa da rota principal funcionando
  end
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
