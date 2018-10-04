class AddCategoryToAbstracts < ActiveRecord::Migration[5.1]
  def change
  	add_column :abstracts, :category, :string
  end
end
