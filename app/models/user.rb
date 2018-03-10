class User < ApplicationRecord
  has_many :users_rooms, class_name: UserRoom.to_s
  has_many :rooms, through: :users_rooms
end
