class RenameTypeToSlot < ActiveRecord::Migration[7.1]
  def change
    rename_column :armors, :type, :slot
  end
end
