class CreateArmorMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :armor_materials do |t|
      t.integer :armor_id
      t.integer :material_id
      t.integer :quantity

      t.timestamps
    end
  end
end
