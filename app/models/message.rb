class Message < ApplicationRecord
  belongs_to :sender, class_name: User.to_s
  belongs_to :room
end
