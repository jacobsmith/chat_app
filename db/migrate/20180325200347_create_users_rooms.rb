class CreateUsersRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :users_rooms do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end