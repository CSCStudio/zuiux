class CreateRatingValues < ActiveRecord::Migration
  def change
    create_table :rating_values, id: false do |t|
      t.references :rating, index: true
      t.float :value, default: 0
      t.integer :rate_type
      t.timestamps null: false
    end
  end
end
