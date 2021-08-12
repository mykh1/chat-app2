Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create] 
    # ネストをすることにより、roomsが親で、messagesが子という親子関係
    # チャットルームに属しているメッセージという意味
  end
  
end
