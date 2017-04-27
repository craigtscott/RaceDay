class CreateCheckpoints < ActiveRecord::Migration[5.0]
  def change
    create_table :checkpoints do |t|
      t.string :name, null: false
      t.integer :race_id, null: false
      t.string :coordinates
      t.string :place_in_race

      t.timestamps
    end
    add_index :checkpoints, :name
    add_index :checkpoints, :race_id
  end
end
