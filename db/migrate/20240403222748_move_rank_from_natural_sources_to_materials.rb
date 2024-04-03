class MoveRankFromNaturalSourcesToMaterials < ActiveRecord::Migration[7.1]
  def change
    remove_column :natural_sources, :rank
    add_column :materials, :rank, :string
  end
end
