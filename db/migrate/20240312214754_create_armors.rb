class CreateArmors < ActiveRecord::Migration[7.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :set_id
      t.string :type
      t.integer :rarity
      t.integer :defense
      t.integer :decor_one
      t.integer :decor_two
      t.integer :decor_three
      t.integer :fire_res
      t.integer :water_res
      t.integer :thunder_res
      t.integer :ice_res
      t.integer :dragon_res

      t.timestamps
    end
  end
end
