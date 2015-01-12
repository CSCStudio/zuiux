class CreateProductsRounds < ActiveRecord::Migration
  def change
    create_table :product_rounds do |t|
      t.references :product, index: true
      t.references :round, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_rounds, :products, on_delete: :cascade
    add_foreign_key :product_rounds, :rounds, on_delete: :cascade
  end
end
