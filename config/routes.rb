Rails.application.routes.draw do
  get 'mail/index'
  root 'home#index'
  get 'authorize' => 'auth#gettoken'
end