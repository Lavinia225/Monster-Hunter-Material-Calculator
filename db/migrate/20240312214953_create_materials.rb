class CreateMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :monster_id

      t.timestamps
    end
  end
end
