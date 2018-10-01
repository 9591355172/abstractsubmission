class AddEmailToPay < ActiveRecord::Migration[5.1]
  def change
  	add_column :pays, :email, :string
  end
end
