class UserRoom < ApplicationRecord
  self.table_name = "users_rooms".freeze
  
  belongs_to :user
  belongs_to :room
end
