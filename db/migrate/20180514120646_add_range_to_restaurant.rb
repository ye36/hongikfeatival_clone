class AddRangeToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :range, :string
  end
end
