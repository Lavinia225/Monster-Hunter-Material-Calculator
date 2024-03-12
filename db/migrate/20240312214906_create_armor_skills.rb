class CreateArmorSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :armor_skills do |t|
      t.integer :armor_id
      t.integer :skill_id
      t.integer :level

      t.timestamps
    end
  end
end
