class AddUserToPay < ActiveRecord::Migration[5.1]
  def change
    add_reference :pays, :user, foreign_key: true
  end
end
