class MoveRarity < ActiveRecord::Migration[7.1]
  def change
    remove_column :armors, :rarity
    add_column :armor_sets, :rarity, :integer
  end
end
