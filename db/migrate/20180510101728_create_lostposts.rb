class CreateLostposts < ActiveRecord::Migration
  def change
    create_table :lostposts do |t|
      t.string :goal
      t.string :group
      t.string :title
      t.text :content
      t.string :location
      t.string :image
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
