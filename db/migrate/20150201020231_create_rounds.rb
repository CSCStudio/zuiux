class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.datetime :start_at
      t.datetime :end_at
    end
  end
end
