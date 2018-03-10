# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

class Seed
  def perform
    ActiveRecord::Base.transaction do
      create_users
      create_rooms
      add_users_to_rooms
      create_messages
    end
  end

  def create_users
    ["Jacob", "Ben"].each do |name|
      User.create!(username: name, password: 'password')
    end
  end

  def create_rooms
    ["Python", "Ruby", "JavaScript", "React"].each do |room_name|
      Room.create!(name: room_name)
    end
  end

  def add_users_to_rooms
    User.all.each do |user|
      Room.all.each do |room|
        UserRoom.create!(user: user, room: room)
      end
    end
  end

  def create_messages
    User.all.each do |user|
      rooms = user.rooms
      100.times do |i|
        Message.create!(room: rooms.sample, header: "Header ##{i}", text: "Hello World #{i} from #{user.username}", sender: user)
      end
    end
  end
end

Seed.new.perform
