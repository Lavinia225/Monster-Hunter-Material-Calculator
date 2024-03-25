class CreateNaturalSources < ActiveRecord::Migration[7.1]
  def change
    create_table :natural_sources do |t|
      t.string :source
      t.string :rank

      t.timestamps
    end
  end
end
