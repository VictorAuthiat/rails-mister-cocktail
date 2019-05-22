Rails.application.routes.draw do
  root 'cocktails#index'
  get '/cocktails/indexx',to: 'cocktails#indexx'
   resources :cocktails, only: [:index, :indexx, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
