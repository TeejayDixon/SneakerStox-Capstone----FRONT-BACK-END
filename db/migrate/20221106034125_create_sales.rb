class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :sneaker, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :size
      t.string :condition

      t.timestamps
    end
  end
end
