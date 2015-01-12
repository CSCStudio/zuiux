class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
