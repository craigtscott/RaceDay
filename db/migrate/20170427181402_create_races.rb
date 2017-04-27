class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.string :date, null: false
      t.string :track, null: false
      t.integer :team_id, null: false

      t.timestamps
    end
    add_index :races, :name
    add_index :races, :date
  end
end
