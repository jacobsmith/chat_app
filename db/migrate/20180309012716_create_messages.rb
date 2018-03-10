class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :header
      t.string :text
      t.references :sender, index: true, foreign_key: { to_table: :users }
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
