class AddPointsToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :point1, :string
    add_column :restaurants, :point2, :string
  end
end
