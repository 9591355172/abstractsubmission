class AddFirstNameToPay < ActiveRecord::Migration[5.1]
  def change
  	add_column :pays, :first_name, :string
  end
end
