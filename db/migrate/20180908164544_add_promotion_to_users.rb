class AddPromotionToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :promotion, :string
  end
end
