class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true
      t.references :product, index: true
      t.timestamps null: false
    end
  end
end
