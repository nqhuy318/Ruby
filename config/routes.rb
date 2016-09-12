Rails.application.routes.draw do
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
class User < ActiveRecord::Base
has_many :microposts
end
class Micropost < ActiveRecord::Base
belongs_to :user
validates :content, length: { maximum: 140 }
end