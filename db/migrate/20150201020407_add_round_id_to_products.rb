class AddRoundIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :round_id, :integer
    add_column :products, :best, :boolean
    add_index :products, :round_id
  end
end
