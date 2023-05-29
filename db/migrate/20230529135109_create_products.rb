class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :overview
      t.float :price
      t.string :unit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
