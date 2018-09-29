class AddFirstNameToPayments < ActiveRecord::Migration[5.1]
  def change
  	add_column :payments, :first_name, :string
  end
end
