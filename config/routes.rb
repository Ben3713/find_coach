Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'professionels/index'
  get 'professionels/show'
  get 'professionels/new'
  get 'professionels/create'
  get 'professionels/edit'
  get 'professionels/update'
  get 'professionels/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
