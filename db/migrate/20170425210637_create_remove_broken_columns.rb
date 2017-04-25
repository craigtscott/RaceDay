class CreateRemoveBrokenColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :remove_broken_columns do |t|

      remove_column :users, :'#<ActiveRecord::ConnectionAdapters::TableDefinition:0x007ffb3e9'

      t.timestamps
    end
  end
end
