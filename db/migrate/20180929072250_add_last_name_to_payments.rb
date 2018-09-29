class AddLastNameToPayments < ActiveRecord::Migration[5.1]
  def change
  	add_column :payments, :last_name, :string
  end
end
