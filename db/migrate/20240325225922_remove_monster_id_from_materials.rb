class RemoveMonsterIdFromMaterials < ActiveRecord::Migration[7.1]
  def change
    remove_column :materials, :monster_id
  end
end
