class CreateFleemarkets < ActiveRecord::Migration
  def change
    create_table :fleemarkets do |t|
      t.string :category
      t.string :time
      t.string :location
      t.text :explain
      t.string :mainimage
      t.string :image2
      t.string :image3
      t.string :price
      t.belongs_to :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
