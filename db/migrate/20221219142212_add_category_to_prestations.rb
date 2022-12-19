class AddCategoryToPrestations < ActiveRecord::Migration[7.0]
  def change
    add_column :prestations, :category, :string
  end
end
