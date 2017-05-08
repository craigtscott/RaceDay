class FixColumnName < ActiveRecord::Migration[5.0]
  def change
     rename_column :race_members, :type, :classification
  end
end
