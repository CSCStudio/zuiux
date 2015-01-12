class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true
      t.references :product, index: true
      t.references :round, index: true
      t.string :rate_type
      t.integer :point

      t.timestamps null: false
    end
    add_foreign_key :ratings, :users, on_delete: :cascade
    add_foreign_key :ratings, :products, on_delete: :cascade
    add_foreign_key :ratings, :rounds, on_delete: :cascade
  end
end
