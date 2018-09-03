class CreateAbstracts < ActiveRecord::Migration[5.1]
  def change
    create_table :abstracts do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :abstract_url
      t.timestamps
    end
  end
end
