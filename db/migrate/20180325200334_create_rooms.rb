class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :protected

      t.timestamps
    end
  end
end
