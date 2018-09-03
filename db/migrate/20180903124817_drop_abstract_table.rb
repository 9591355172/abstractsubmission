class DropAbstractTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :abstracts
  end
end
