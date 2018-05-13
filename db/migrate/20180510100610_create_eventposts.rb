class CreateEventposts < ActiveRecord::Migration
  def change
    create_table :eventposts do |t|
      t.string :title
      t.text :contents
      t.string :runtime
      t.string :location
      t.string :mainimage
      t.string :image2
      t.string :image3
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
