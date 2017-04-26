class CreateRaceMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :race_members do |t|
      t.integer :team_id, null: false
      t.integer :user_id, null: false
      t.integer :race_id, null: false
      t.integer :bib_number, null: false
      t.string :type, null: false
      t.timestamps
    end
    add_index :race_members, :team_id
    add_index :race_members, :user_id
    add_index :race_members, :race_id
    add_index :race_members, :bib_number
    add_index :race_members, :type
  end
end
