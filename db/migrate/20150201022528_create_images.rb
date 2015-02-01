class CreateImages < ActiveRecord::Migration
  def up
    create_table :images do |t|
      t.references :attachable, index: true, polymorphic: true
      t.integer :position
      t.timestamps null: false
    end

    add_attachment :images, :file
  end

  def down
    remove_table :images
  end
end
