class AddTxnidToPay < ActiveRecord::Migration[5.1]
  def change
  	add_column :pays, :txnid, :string
  end
end
