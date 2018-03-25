class Message < ApplicationRecord
  belongs_to :room
  belongs_to :created_by, class_name: User.to_s
end
