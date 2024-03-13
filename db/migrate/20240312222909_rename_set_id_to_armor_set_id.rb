class RenameSetIdToArmorSetId < ActiveRecord::Migration[7.1]
  def change
    rename_column :armors, :set_id, :armor_set_id
  end
end
