class AddAttrToEventposts < ActiveRecord::Migration
  def change
    add_column :eventposts, :host, :string
  end
end
