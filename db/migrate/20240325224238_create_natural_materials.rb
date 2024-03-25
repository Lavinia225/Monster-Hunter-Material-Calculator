class CreateNaturalMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :natural_materials do |t|
      t.integer :material_id
      t.integer :natural_source_id

      t.timestamps
    end
  end
end
