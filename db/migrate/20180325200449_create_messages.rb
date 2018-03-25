class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :room, foreign_key: true
      t.text :header
      t.text :body
      t.integer :created_by_id, foreign_key: true
      t.integer :room_id, foreign_key: true

      t.timestamps
    end
  end
end
