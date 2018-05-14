class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :tel
      t.string :delivery
      t.string :package
      t.string :runtime
      t.string :sale
      t.string :menuimg
      t.string :image
      t.string :foodtype
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
