class AddCategoryToPay < ActiveRecord::Migration[5.1]
  def change
  	add_column :pays, :category, :string
  end
end
