class CreateProductComments < ActiveRecord::Migration
  def change
    create_table :product_comments do |t|
      t.text :good
      t.text :bad
      t.text :feeling
      t.integer :product_id

      t.timestamps null: false
    end

    add_index :product_comments, :product_id
  end
end
