# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  'Java',
  'Ruby',
  'Python',
  'JavaScript',
  'React'
]. each do |room_name|
  Room.create(name: room_name)
end

[
  'jacob',
  'ben',
  'admin'
].each do |user_name|
  User.create(username: user_name)
end

Room.all.each do |room|
  User.all.each do |user|
    UserRoom.create(room: room, user: user)
  end
end

admin = User.find_by(username: 'admin')
Room.all.each do |room|
  Message.create(room: room, created_by: admin, body: 'This is a test message from the admin for room #{room.name}.')
end
