class AddRatingColumnToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :design, :integer , default: 0
    add_column :ratings, :ux, :integer , default: 0
    add_column :ratings, :creative, :integer , default: 0
    add_column :ratings, :content, :integer , default: 0
  end
end
