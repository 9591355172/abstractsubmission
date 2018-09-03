class AddAbstractToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :abstract, :string
  end
end
