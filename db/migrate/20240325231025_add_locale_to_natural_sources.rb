class AddLocaleToNaturalSources < ActiveRecord::Migration[7.1]
  def change
    add_column :natural_sources, :locale, :string
  end
end
