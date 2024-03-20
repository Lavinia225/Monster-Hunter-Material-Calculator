class AddCostToArmors < ActiveRecord::Migration[7.1]
  def change
    add_column :armors, :cost, :integer
  end
end
