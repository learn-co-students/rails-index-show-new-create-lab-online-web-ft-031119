Rails.application.routes.draw do
  resources :coupons, only: [:index, :edit, :show, :new, :create, :destroy]

end
