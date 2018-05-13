class AddNameToFleemarkets < ActiveRecord::Migration
  def change
    add_column :fleemarkets, :name, :string
  end
end
