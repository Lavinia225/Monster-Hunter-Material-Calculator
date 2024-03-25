class CreateMonsterMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :monster_materials do |t|
      t.integer :monster_id
      t.integer :material_id

      t.timestamps
    end
  end
end
